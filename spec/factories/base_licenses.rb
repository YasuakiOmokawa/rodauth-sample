# frozen_string_literal: true

FactoryBot.define do
  factory :base_license do
    plan_code { FFaker::Lorem.characters }
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
