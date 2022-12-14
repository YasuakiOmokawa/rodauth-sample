# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BaseLicense, type: :model do
  describe '関連付け確認' do
    let(:base_license) { create(:base_license) }

    it 'licenseが紐づかないこと' do
      binding.b
      expect(base_license.license).to_not be_present
    end
  end
end

# == Schema Information
#
# Table name: base_licenses
#
#  id         :integer          not null, primary key
#  plan_code  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
