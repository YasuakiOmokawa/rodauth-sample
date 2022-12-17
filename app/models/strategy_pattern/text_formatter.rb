# frozen_string_literal: true

module StrategyPattern
  class TextFormatter
    def output_report(context)
      puts("**#{context.title}**")
      context.text.each do |line|
        puts(line)
      end
    end
  end
end
