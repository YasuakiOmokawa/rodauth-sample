# frozen_string_literal: true

class Transaction::Option
  attr_reader :license_type, :quantity

  def initialize(license_type:, quantity:, **)
    @license_type = license_type
    @quantity = quantity
  end
end
