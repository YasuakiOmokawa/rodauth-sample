# frozen_string_literal: true

module Transaction
  class UpdatingContext < ApplicationModel
    attribute :api_client, :boolean
    attribute :max_paper_upload_count_unlimited, :boolean
    attribute :max_paper_upload_count, :integer

    def initialize(options, master_plan)
      @options = options
      @master_plan = master_plan

      super(
        api_client: fetch_option_or_default(:api_client),
        max_paper_upload_count_unlimited: fetch_option_or_default(:max_paper_upload_count_unlimited),
        max_paper_upload_count: fetch_max_paper_upload_count
      )
    end

    private

    attr_reader :options, :master_plan

    def fetch_max_paper_upload_count
      [
        master_plan.max_paper_upload_count,
        fetch_option(:max_paper_upload_count_900)&.quantity.to_i * 900
      ].sum
    end

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
