# frozen_string_literal: true

FactoryBot.define do
  factory :license do
    subscription { nil }
    next_payment_date { 1.year.from_now.to_date }
  end
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
