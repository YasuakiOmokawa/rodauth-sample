class Parts
  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select { _1.needs_spare }
  end

  private

  attr_reader :parts
end