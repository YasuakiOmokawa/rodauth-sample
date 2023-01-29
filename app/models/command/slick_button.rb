# frozen_string_literal: true

class Command::SlickButton
  attr_accessor :command

  def initialize(command)
    @command = command
  end

  def on_button_push
    @command&.execute
  end
end
