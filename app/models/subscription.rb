# frozen_string_literal: true

class Subscription < ApplicationRecord
  belongs_to :company

  has_many :licenses, dependent: :destroy
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
