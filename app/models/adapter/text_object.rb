# frozen_string_literal: true

module Adapter
  class TextObject
    attr_reader :text, :size_inches, :color

    def initialize(text, size_inches, color)
      @text = text
      @size_inches = size_inches
      @color = color
    end
  end
end
