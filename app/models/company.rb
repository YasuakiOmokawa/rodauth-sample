# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :sub_options, dependent: :destroy, autosave: true
end

# == Schema Information
#
# Table name: companies
#
#  id            :integer          not null, primary key
#  address       :string           not null
#  name          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  sub_option_id :integer
#
# Indexes
#
#  index_companies_on_sub_option_id  (sub_option_id)
#
# Foreign Keys
#
#  sub_option_id  (sub_option_id => sub_options.id)
#
