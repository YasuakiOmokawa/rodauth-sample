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

    def fetch_option_or_default(symbol)
      '1'
    end
  end
end
