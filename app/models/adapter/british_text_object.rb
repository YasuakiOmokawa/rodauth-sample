# frozen_string_literal: true

module Adapter
  class BritishTextObject
    attr_reader :string, :size_mm, :colour

    def initialize(string, size_mm, colour)
      @string = string
      @size_mm = size_mm
      @colour = colour
    end
  end
end
