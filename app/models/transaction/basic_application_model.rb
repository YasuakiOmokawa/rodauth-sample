# frozen_string_literal: true

module Transaction
  class BasicApplicationModel
    include ::ActiveModel::Model
    # include ::ActiveModel::Validations::Callbacks

    attr_accessor :id, :name, :omg

    def initialize(attributes={})
      super
      @omg ||= true
    end
  end
end
