class OptionLicense < ApplicationRecord
end

# == Schema Information
#
# Table name: option_licenses
#
#  id           :integer          not null, primary key
#  license_type :string           not null
#  quantity     :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
