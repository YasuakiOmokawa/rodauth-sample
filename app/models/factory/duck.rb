# frozen_string_literal: true

class Factory::Duck
  def initialize(name)
    @name = name
  end

  def eat
    Rails.logger.debug { "duck #{@name} is eating." }
  end

  def speak
    Rails.logger.debug { "duck #{@name} is louding quark." }
  end

  def sleep
    pust "duck #{@name} is sleeping quietly."
  end
end
