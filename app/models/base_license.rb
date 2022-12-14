# frozen_string_literal: true

class BaseLicense < ApplicationRecord
  include Licensable
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
