# frozen_string_literal: true

module FactoryMethod
  class Saxophone
    def initialize(name)
      @name = name
    end

    def play
      "sax: #{name} is playing music."
    end

    private

    attr_reader :name
  end
end
