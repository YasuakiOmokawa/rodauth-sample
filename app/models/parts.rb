class Parts
  extend Forwardable
  def_delegators :parts, :size, :each
  include Enumerable

  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select { _1.needs_spare }
  end

  private

  attr_reader :parts
end