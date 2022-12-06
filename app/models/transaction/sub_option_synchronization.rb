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
      build_new_sub_option
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

    def build_new_sub_option
      option_types = sub_options.map(&:option_type)

      api_sub_options.reject { _1.option_type.in?(option_types) }.each do |sub_option|
        sub_options.build(
          quantity: sub_option.quantity,
          option_type: sub_option.option_type
        )
      end
    end

    def api_sub_options; end
  end
end
