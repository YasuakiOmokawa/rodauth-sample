# frozen_string_literal: true

class Command::SaveCommand
  def execute
    Rails.logger.debug 'exec this command after saving'
  end
end
