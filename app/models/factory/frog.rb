# frozen_string_literal: true

class Factory::Frog
  def initialize(name)
    @name = name
  end

  def eat
    Rails.logger.debug { "frog #{@name} is eating." }
  end

  def speak
    Rails.logger.debug { "frog #{@name} is louding gerogero." }
  end

  def sleep
    Rails.logger.debug { "frog #{@name} is not sleeping, speaking whole night." }
  end
end
