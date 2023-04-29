# frozen_string_literal: true

class TimeFilter
  def initialize(start, finish)
    @start = start
    @finish = finish
  end

  def to_proc
    start = self.start
    finish = self.finish

    proc do |time|
      next false if start && time < start
      next false if finish && time > finish

      true
    end
  end

  private

  attr_reader :start, :finish
end
