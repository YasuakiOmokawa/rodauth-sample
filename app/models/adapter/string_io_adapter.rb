# frozen_string_literal: true

class Adapter::StringIoAdapter
  def initialize(string)
    @string = string
    @eof = false
  end

  def readline
    raise EOFError if @eof

    @eof = true
    @string
  end

  def eof?
    @eof
  end
end
