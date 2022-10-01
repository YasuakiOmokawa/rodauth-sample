# frozen_string_literal: true

module FactoryMethod
  class TrumpetFactory < InstrumentFactory
    def build_instrument(name)
      FactoryMethod::Trumpet.new(name)
    end
  end
end
