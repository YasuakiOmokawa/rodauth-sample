# frozen_string_literal: true

module Command
  class SlickButtonUsingBlock
    attr_accessor :command

    def initialize(&block)
      @command = block
    end

    def on_button_push
      @command&.call
    end
  end
end
