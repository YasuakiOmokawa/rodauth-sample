# frozen_string_literal: true

module Adapter
  class Renderer
    def render(text_object)
      puts "Rendering text: #{text_object.text}, size_inches: #{text_object.size_inches}, color: #{text_object.color}"
    end
  end
end
