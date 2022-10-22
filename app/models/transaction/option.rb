# frozen_string_literal: true

module Transaction
  class Option
    attr_reader :option_type, :quantity

    def initialize(option_type:, quantity:, **)
      @option_type = option_type
      @quantity = quantity
    end
  end
end
