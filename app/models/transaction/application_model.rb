# frozen_string_literal: true

module Transaction
  class ApplicationModel < BasicApplicationModel
    include DelegateAttribute

    define_model_callbacks :create
    define_model_callbacks :update
    define_model_callbacks :destroy

  end
end
