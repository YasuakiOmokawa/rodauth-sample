# frozen_string_literal: true

module Transaction
  class BasicApplicationModel
    include ::ActiveModel::Model
    include ::ActiveModel::Validations::Callbacks

    define_model_callbacks :save

    before_validation :normalize # ::ActiveModel::Validations::Callbacksで定義
  end
end
