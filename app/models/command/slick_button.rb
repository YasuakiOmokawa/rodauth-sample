# frozen_string_literal: true

module Command
  class SlickButton
    attr_accessor :command

    def initialize(command)
      @command = command
    end

    def on_button_push
      @command&.execute
    end
  end
end
