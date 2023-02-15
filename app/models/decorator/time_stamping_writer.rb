# frozen_string_literal: true

class Decorator::TimeStampingWriter < Decorator::WriterDecorator
  def write_line(line)
    @real_writer.write_line("#{Time.zone.now}: #{line}")
  end
end
