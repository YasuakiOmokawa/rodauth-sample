# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :sub_options, dependent: :destroy, autosave: true
  has_many :subscriptions, dependent: :destroy
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
