# frozen_string_literal: true

class Human < Animal
  def walk
    Rails.logger.debug '歩く'
  end
end
