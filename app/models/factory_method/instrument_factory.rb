# frozen_string_literal: true

class FactoryMethod::InstrumentFactory
  def initialize(number_instruments)
    @instruments = []
    number_instruments.times do |i|
      add_instrument(build_instrument("Instrument #{i}"))
    end
  end

  def ship_out
    @tmp = @instruments.dup
    empty_instrument
    @tmp
  end

  private

  attr_reader :name

  def add_instrument(instrument)
    @instruments << instrument
  end

  def empty_instrument
    @instruments = []
  end
end
