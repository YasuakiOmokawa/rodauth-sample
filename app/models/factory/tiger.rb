# frozen_string_literal: true

class Factory::Tiger
  def initialize(name)
    @name = name
  end

  def eat
    Rails.logger.debug { "Tiger #{@name} is eating." }
  end

  def speak
    Rails.logger.debug { "Tiger #{@name} is louding." }
  end

  def sleep
    Rails.logger.debug { "Tiger #{@name} is 眠くなったら眠ります." }
  end
end
