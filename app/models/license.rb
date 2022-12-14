# frozen_string_literal: true

class License < ApplicationRecord
  belongs_to :subscription

  delegated_type :licensable, types: %w[BaseLicense], dependent: :destroy
end

# == Schema Information
#
# Table name: licenses
#
#  id                :integer          not null, primary key
#  next_payment_date :date             not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  subscription_id   :integer          not null
#
# Indexes
#
#  index_licenses_on_subscription_id  (subscription_id)
#
# Foreign Keys
#
#  subscription_id  (subscription_id => subscriptions.id)
#
