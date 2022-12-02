# frozen_string_literal: true

class SubOption < ApplicationRecord
  OPTION_TYPES = %w[
    api_client
    max_paper_upload_count
    max_paper_upload_count_unlimited
  ].freeze

  belongs_to :company
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
