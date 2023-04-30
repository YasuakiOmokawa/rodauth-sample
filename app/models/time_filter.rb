# frozen_string_literal: true

class TimeFilter
  def initialize(start: nil, finish: nil)
    @start = start
    @finish = finish
  end

  def to_proc
    start = self.start
    finish = self.finish

    if start && finish
      proc { |time| time >= start && time <= finish }
    elsif start
      proc { |time| time >= start }
    elsif finish
      proc { |time| time <= finish }
    else
      proc { true }
    end
  end

  private

  attr_reader :start, :finish
end
