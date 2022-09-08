# frozen_string_literal: true

module Diameterizable
  extend ActiveSupport::Concern

  def width
    raise notImplementdError.new, 'implement here'
  end
end
