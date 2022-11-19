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
  end
end
