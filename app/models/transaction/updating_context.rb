# frozen_string_literal: true

module Transaction
  class UpdatingContext < ApplicationModel
    attribute :api, :boolean

    def initialize(options)
      @options = options

      super(
        api: fetch_option_or_default(:api)
      )
    end

    private

    attr_reader :options

    def fetch_option_or_default(type)
      if (option == fetch_option(type))
        option.quantity
      else
        master_data[type]
      end
    end

    def fetch_option(type)
      options.find { _1.option_type == type.to_s }
    end
  end
end
