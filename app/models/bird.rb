# frozen_string_literal: true

class Bird < Animal
  def cry
    Rails.logger.debug '鳴く'
  end

  def fly
    Rails.logger.debug '飛ぶ'
  end
end
