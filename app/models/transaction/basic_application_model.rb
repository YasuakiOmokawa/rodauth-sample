# frozen_string_literal: true

module Transaction
  class BasicApplicationModel
    include ::ActiveModel::Model
    include ::ActiveModel::Validations::Callbacks

    define_model_callbacks :save # ActiveModel::Model -> ActiveModel::API -> ActiveModel::Validations -> ActiveModel::Callbacks#define_model_callbacks

    before_validation :normalize # ActiveModel::Validations::Callbacks#before_validation

    private

    # 入力値に対する正規化を実施する場合オーバーライドしてください
    #
    # example:
    #   def normalize
    #     self.name = normalize_name(name) if name.present?
    #   end
    #
    def normalize; end
  end
end
