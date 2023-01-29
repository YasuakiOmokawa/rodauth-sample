# frozen_string_literal: true

class StrategyPattern::TextFormatter
  def output_report(context)
    Rails.logger.debug { "**#{context.title}**" }
    context.text.each do |line|
      Rails.logger.debug(line)
    end
  end
end
