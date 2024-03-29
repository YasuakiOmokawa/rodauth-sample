# frozen_string_literal: true

FactoryBot.define do
  factory :option_license do
    license_type { SubOption::OPTION_TYPES.sample }
    quantity { 0 }
  end
end

# == Schema Information
#
# Table name: option_licenses
#
#  id           :integer          not null, primary key
#  license_type :string           not null
#  quantity     :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
