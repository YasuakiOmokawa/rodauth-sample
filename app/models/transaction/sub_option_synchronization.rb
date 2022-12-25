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

    attr_reader :subscription, :client

    delegate :licenses, to: :subscription, private: true

    def normalize
      update_and_destroy_option_license
      build_new_option_license
    end

    def update_and_destroy_option_license
      licenses.each do |license|
        if (option = api_options.find { _1.license_type == license.option_license.license_type })
          license.option_license.assign_attributes(
            quantity: option.quantity
          )
        else
          license.option_license.mark_for_destruction
        end
      end
    end

    def build_new_option_license
      license_types = licenses.map do |license|
        license.option_license.license_type
      end

      api_options.reject { _1.license_type.in?(license_types) }.each do |api_option|
        licenses.build(
          next_payment_date: 1.year.from_now,
          licensable: OptionLicense.new(
            quantity: api_option.quantity,
            license_type: api_option.license_type
          )
        )
      end
    end

    def api_options
      @api_options = client.option_licenses
    end
  end
end
