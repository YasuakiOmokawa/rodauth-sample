# frozen_string_literal: true

module Transaction
  class Option
    attr_reader :license_type, :quantity

    def initialize(license_type:, quantity:, **)
      @license_type = license_type
      @quantity = quantity
    end
  end
end
