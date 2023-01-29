# frozen_string_literal: true

class Command::SlickButtonUsingBlock
  attr_accessor :command

  def initialize(&block)
    @command = block
  end

  def on_button_push
    @command&.call
  end
end
