# frozen_string_literal: true

module Composite
  class MixTask < Task
    def initialize
      super('Mix that batter up!')
    end

    # 混ぜるのに3分
    def get_time_required
      3.0
    end
  end
end
