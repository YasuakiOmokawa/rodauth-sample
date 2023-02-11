# frozen_string_literal: true

class Decorator::EnhancedWriter
  def initialize(path)
    @file = File.open(path, 'w')
    @line_number = 1
    @check_sum = 0
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def checksuming_write_line(data)
    set_check_sum(data)
    write_line(data)
  end

  attr_reader :check_sum

  def timestamping_write_line(data)
    write_line("#{Time.zone.now}: #{data}")
  end

  def numbering_write_line(data)
    write_line("#{@line_number}: #{data}")
    @line_number += 1
  end

  def close
    @file.close
  end

  private

  def set_check_sum(string)
    @check_sum = string.sum
  end
end
