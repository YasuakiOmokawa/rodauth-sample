# frozen_string_literal: true

module FactoryMethod
  class Trumpet
    def initialize(name)
      @name = name
    end

    def play
      "trumpet: #{name} is playing music."
    end

    private

    attr_reader :name
  end
end
