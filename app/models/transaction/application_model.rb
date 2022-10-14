# frozen_string_literal: true

# ApplicationModel
#
# ActiveRecordオブジェクトならびにそれに準じたモデルをラップして統一した操作を提供します。
# 例えば以下のケースに利用します。
#
module Transaction
  class ApplicationModel < BasicApplicationModel
    include DelegateAttribute

    define_model_callbacks :create
    define_model_callbacks :update
    define_model_callbacks :destroy

    validate :validate_models

    def initialize(attributes = {})
      super(attributes)
      @models = []
    end

    def save
      return false if invalid?

      run_callbacks(:commit) { save_in_transaction }.present?
    end

    def save!
      save || raise(ActiveRecord::RecordNotSaved.new('Failed to save the form', self))
    end

    def create(attributes = {})
      run_callbacks(:create) do
        assign_attributes(attributes)
        save
      end
    end

    def create!(attributes = {})
      run_callbacks(:create) do
        assign_attributes(attributes)
        save!
      end
    end

    def update(attributes = {})
      run_callbacks(:update) do
        assign_attributes(attributes)
        save
      end
    end

    def update!(attributes = {})
      run_callbacks(:update) do
        assign_attributes(attributes)
        save!
      end
    end

    def destroy
      run_callbacks(:commit) { destroy_in_transaction }.present?
    end

    def destroy!
      destroy || raise(ActiveRecord::RecordNotDestroyed.new('Failed to destroy the form', self))
    end

    private

    attr_reader :models

    def save_in_transaction
      result = ::ActiveRecord::Base.transaction do
        result = run_callbacks(:save) { save_models }
        raise ActiveRecord::Rollback unless result

        true
      end
      result.present?
    rescue StandardError => e
      handle_rollback(e)
    end

    def save_models
      models.to_a.map(&:save!)
    end

    def destroy_in_transaction
      result = ::ActiveRecord::Base.transaction do
        result = run_callbacks(:destroy) { models.to_a.all?(&:destroy) }
        raise ActiveRecord::Rollback unless result

        true
      end
      models.to_a.each { promote_errors(_1) } unless result
      result.present?
    rescue StandardError => e
      handle_rollback(e)
    end

    def validate_models
      models.to_a.select(&:invalid?).each { |model| promote_errors(model) }
    end

    def promote_errors(model)
      model.errors.each { |error| errors.add(error.attribute, error.message) }
    end

    def handle_rollback(error)
      run_callbacks :rollback
      raise error
    end
  end
end
