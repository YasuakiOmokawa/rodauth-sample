# frozen_string_literal: true

module FactoryMethod
  class InstrumentFactory
    def initialize(number_saxophones)
      @saxophones = []
      number_saxophones.times.do |i|
        add_saxophone(FactoryMethod::Saxophone.new("Saxphone #{i}"))
      end
    end

    def ship_out
      @tmp = @saxophones.dup
      empty_saxophone
      @tmp
    end

    private

    attr_reader :name

    def add_saxophone(saxophone)
      @saxophones << saxophone
    end

    def empty_saxophone
      @saxophones = []
    end
  end
end
