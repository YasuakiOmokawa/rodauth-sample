# frozen_string_literal: true

class FactoryMethod::SaxophoneFactory < InstrumentFactory
  def build_instrument(name)
    FactoryMethod::Saxophone.new(name)
  end
end
