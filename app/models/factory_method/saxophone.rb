# frozen_string_literal: true

class FactoryMethod::Saxophone
  def initialize(name)
    @name = name
  end

  def play
    "sax: #{name} is playing music."
  end

  private

  attr_reader :name
end
