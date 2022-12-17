# frozen_string_literal: true

module StrategyPattern
  class Formatter
    def output_report(context)
      raise NotImplementedError
    end
  end
end
