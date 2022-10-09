# frozen_string_literal: true

module Transaction
  class ApplicationModel < BasicApplicationModel
    include DelegateAttribute

    define_model_callbacks :create
    define_model_callbacks :update
    define_model_callbacks :destroy

    def initialize(attributes = {})
      super(attributes)
      @models = []
    end

    def save
      return false if invalid?

      run_callbacks(:commit) { save_in_transaction }.present?
    end

    private

    attr_reader :models

    def save_in_transaction
      result = ::ActiveRecord::Base.transaction do
        result = run_callbacks(:save) { save_models }
        raise ActiveRecord::Rollback if result

        true
      end
      result.present?
    rescue StandardError => e
      handle_rollback(e)
    end

    def save_models
      models.to_a.map(&:save!)
    end
  end
end
