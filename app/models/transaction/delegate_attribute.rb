# frozen_string_literal: true

module Transaction
  module DelegateAttribute
    extend ActiveSupport::Concern

    class_methods do
      def delegate_attribute(*attributes, to:, **options)
        delegates = attributes.flat_map do |attribute|
          reader = attribute
          writer = "#{attribute}="

          [reader, writer]
        end

        delegate(*delegates, to:, **options)
      end
    end
  end
end
