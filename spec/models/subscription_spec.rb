# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe '関連付け確認' do
    let(:subscription) { create(:subscription) }

    it 'companyが紐づくこと' do
      expect(subscription.company).to be_present
    end
  end
end

# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer          not null
#
# Indexes
#
#  index_subscriptions_on_company_id  (company_id)
#
# Foreign Keys
#
#  company_id  (company_id => companies.id)
#
