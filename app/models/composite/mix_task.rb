# frozen_string_literal: true

class Composite::MixTask < Task
  def initialize
    super('Mix that batter up!')
  end

  # 混ぜるのに3分
  def get_time_required
    3.0
  end
end
