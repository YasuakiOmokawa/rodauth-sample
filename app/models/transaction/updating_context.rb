# frozen_string_literal: true

module Transaction
  class UpdatingContext < ApplicationModel
    attribute :api, :boolean

    def initialize
      super(
        api: fetch_option_or_default(:api)
      )
    end

    private

    def fetch_option_or_default(type)
      if option == fetch_option(type)
        option.quantity
      else
        master_data[type]
      end
    end

    def option; end

    def fetch_option(type); end
  end
end
