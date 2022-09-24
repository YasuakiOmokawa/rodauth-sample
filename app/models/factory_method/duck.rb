# frozen_string_literal: true

module FactoryMethod
  class Duck
    def initialize(name)
      @name = name
    end

    def eat
      "duck #{name} is eating now."
    end

    def speak
      "duck #{name} is speaking now."
    end

    def sleep
      "duck #{name} is sleeping now."
    end

    private

    attr_reader :name
  end
end
