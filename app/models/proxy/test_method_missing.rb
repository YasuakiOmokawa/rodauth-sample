# frozen_string_literal: true

class Proxy::TestMethodMissing
  def hello
    Rails.logger.debug 'Hello, from a real method'
  end

  def method_missing(method_name, *args)
    Rails.logger.debug { "Warning: #{method_name} is missing." }
    Rails.logger.debug { "Arguments: #{args.inspect}" }
  end
end
