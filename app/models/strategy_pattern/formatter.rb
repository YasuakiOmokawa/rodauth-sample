# frozen_string_literal: true

class StrategyPattern::Formatter
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(title:, text:, formatter:)
    @title = title
    @text = text
    @formatter = formatter
  end

  def output_report
    formatter.output_report(self)
  end
end
