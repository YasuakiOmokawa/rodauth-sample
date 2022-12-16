# frozen_string_literal: true

require 'rails_helper'

RSpec.describe License, type: :model do
  describe '関連付け確認' do
    let(:license) { create(:license) }

    it 'companyが紐づくこと' do
      expect(license.subscription).to be_present
    end
  end
end

# == Schema Information
#
# Table name: licenses
#
#  id                :integer          not null, primary key
#  licensable_type   :string
#  next_payment_date :date             not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  licensable_id     :bigint
#  subscription_id   :integer          not null
#
# Indexes
#
#  index_licenses_on_subscription_id  (subscription_id)
#  index_polymorphic_key_licenses     (licensable_type,licensable_id) UNIQUE
#
# Foreign Keys
#
#  subscription_id  (subscription_id => subscriptions.id)
#
