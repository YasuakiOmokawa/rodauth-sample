# frozen_string_literal: true

class ReportContext
  attr_reader :title, :text

  def initialize(formatter)
    @title = '月次報告'
    @text = %w(good! soso normal)
    @formatter = formatter
  end

  def output_report
    formatter.output_report(self)
  end

  private

  attr_reader :formatter
end
