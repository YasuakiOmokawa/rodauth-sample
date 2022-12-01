# frozen_string_literal: true

FactoryBot.define do
  factory :company do
    name { FFaker::CompanyJA.name }
    address { FFaker::AddressJA.address }
    sub_option
  end
end

# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  address    :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
