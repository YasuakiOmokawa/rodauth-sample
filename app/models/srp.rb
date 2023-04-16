# frozen_string_literal: true

class Srp
  def initialize(arg)
    @arg = arg
    @str = +''
    @name = @arg.to_s.gsub('cool', 'amazing').capitalize
  end

  def output_string
    str << 'test' << 'ing...1...2'
    str << '. Found: ' << name
    str
  end

  private

  attr_reader :arg, :str, :name
end
