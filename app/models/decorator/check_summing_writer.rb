# frozen_string_literal: true

class Decorator::CheckSummingWriter < Decorator::WriterDecorator
  attr_reader :check_sum

  def initialize(real_writer)
    super(real_writer)
    @check_sum = 0
  end

  def write_line(line)
    set_check_sum(line)
    @real_writer.write_line(line)
  end

  private

  def set_check_sum(string)
    @check_sum = string.sum
  end
end
