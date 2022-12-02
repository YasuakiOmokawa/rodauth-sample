# frozen_string_literal: true

FactoryBot.define do
  factory :sub_option do
    company
    option_type { SubOption::OPTION_TYPES.sample }
    quantity { 0 }
  end
end

# == Schema Information
#
# Table name: sub_options
#
#  id          :integer          not null, primary key
#  option_type :string           not null
#  quantity    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#
# Indexes
#
#  index_sub_options_on_company_id  (company_id)
#
# Foreign Keys
#
#  company_id  (company_id => companies.id)
#
