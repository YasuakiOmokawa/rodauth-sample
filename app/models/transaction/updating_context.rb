# frozen_string_literal: true

module Transaction
  class UpdatingContext < ApplicationModel
    attribute :api_client, :boolean

    def initialize(options, master_plan)
      @options = options
      @master_plan = master_plan

      super(
        api_client: fetch_option_or_default(:api_client),
        sms_contract: fetch_option_or_default(:sms_contract)
      )
    end

    private

    attr_reader :options, :master_plan

    def fetch_option_or_default(type)
      if (option = fetch_option(type))
        option.quantity
      else
        master_plan[type]
      end
    end

    def fetch_option(type)
      options.find { _1.option_type == type.to_s }
    end
  end
end
