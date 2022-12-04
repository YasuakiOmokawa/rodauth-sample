# frozen_string_literal: true

module Transaction
  class SubOptionSynchronization < ApplicationModel
    def initialize(company)
      @company = company
      super({})
    end

    private

    attr_reader :company

    delegate :sub_options, to: :company, private: true

    def normalize
      update_and_destroy_sub_option
    end

    def update_and_destroy_sub_option
      sub_options.each do |sub_option|
        if (option = options.find { _1.option_type == sub_option.option_type })
          sub_option.assign_attributes(
            quantity: option.quantity
          )
        else
          sub_option.mark_for_destruction
        end
      end
    end
  end
end
