# frozen_string_literal: true

class Parts
  extend Forwardable
  def_delegators :parts, :size, :each
  include Enumerable

  def initialize(parts)
    @parts = parts
  end

  def spares
    select(&:needs_spare)
  end

  private

  attr_reader :parts
end
