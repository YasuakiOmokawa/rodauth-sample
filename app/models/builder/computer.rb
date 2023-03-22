# frozen_string_literal: true

class Builder::Computer
  attr_accessor :display
  attr_accessor :motherboard
  attr_reader :drives

  def initialize(display: :crt, motherboard: :drives, motherboard: Motherboard.new, drives: [])
    @motherboard = motherboard
    @drives = drives
    @display = display
  end
end
