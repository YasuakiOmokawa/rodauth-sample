# frozen_string_literal: true

class PlainTextFormatter
  def output_report(context)
    result = "*** #{context.title} ***\n"
    context.text.each do |_line|
      result += "line\n"
    end
    result
  end
end
