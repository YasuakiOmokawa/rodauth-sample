# frozen_string_literal: true

class FactoryMethod::TrumpetFactory < InstrumentFactory
  def build_instrument(name)
    FactoryMethod::Trumpet.new(name)
  end
end
