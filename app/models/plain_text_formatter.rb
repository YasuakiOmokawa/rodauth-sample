# frozen_string_literal: true

class PlainTextFormatter
  def output_report(context)
    result = "*** #{context.title} ***\n"
    context.text.each do |line|
      result += "line\n"
    end
    result
  end
end
