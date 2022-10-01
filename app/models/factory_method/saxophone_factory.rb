# frozen_string_literal: true

module FactoryMethod
  class SaxophoneFactory < InstrumentFactory
    def build_instrument(name)
      FactoryMethod::Saxophone.new(name)
    end
  end
end
