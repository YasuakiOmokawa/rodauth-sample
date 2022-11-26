# frozen_string_literal: true

class Company < ApplicationRecord
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
