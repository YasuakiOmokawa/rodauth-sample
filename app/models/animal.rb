# frozen_string_literal: true

class Animal
  def eat
    Rails.logger.debug '食べる'
  end
end
