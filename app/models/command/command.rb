# frozen_string_literal: true

class Command::Command
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def execute
    raise NotImplementedError
  end
end
