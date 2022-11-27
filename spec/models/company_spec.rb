# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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
