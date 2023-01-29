# frozen_string_literal: true

class Adapter::Renderer
  def render(text_object)
    Rails.logger.debug { "Rendering text: #{text_object.text}, size_inches: #{text_object.size_inches}, color: #{text_object.color}" }
  end
end
