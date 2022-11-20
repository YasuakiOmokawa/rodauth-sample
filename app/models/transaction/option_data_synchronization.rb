# frozen_string_literal: true

module Transaction
  class OptionDataSynchronization < ApplicationModel
    def initialize
      super({})
    end

    private

    def normalize
      update_and_destroy_option_data
    end

    def update_and_destroy_option_data
      option_datas.each do |option_data|
        if (option = options.find { _1.license_type == option_data.license_type } )
          option_data.assign_attributes(
            plan_code: option.plan_code,
            quantity: option.quantity,
          )
        else
          option_data.mark_for_destruction
        end
      end
    end
  end
end
