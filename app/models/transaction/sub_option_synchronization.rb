# frozen_string_literal: true

module Transaction
  class SubOptionSynchronization < ApplicationModel
    def initialize(subscription, client)
      @subscription = subscription
      @client = client
      super({})
      @models << subscription
    end

    private

    attr_reader :license, :client

    delegate :licenses, to: :subscription, private: true
    delegate :option_license, to: :license, private: true

    def normalize
      update_and_destroy_option_license
      build_new_option_license
    end

    def update_and_destroy_option_license
      lisenses.each do |_license|
        if (option = api_option_license.find { _1.license_type == option_license.license_type })
          option_license.assign_attributes(
            quantity: api_option_license.quantity
          )
        else
          option_license.mark_for_destruction
        end
      end
    end

    def build_new_option_license
      license_types = licenses.map(&:option_license.license_type)

      api_option_license.reject { _1.license_type.in?(license_types) }.each do |api_option|
        option_licenses.build(
          quantity: api_option.quantity,
          license_type: api_option.license_type
        )
      end
    end

    def api_option_license
      @api_option_license = client.option_licenses
    end
  end
end
