# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Wheel, type: :model do
  describe '#diameter' do
    it 'returns diameter' do
      wheel = Wheel.new(26, 1.5)
      expect(wheel.diameter).to eq 29
    end
  end
end
