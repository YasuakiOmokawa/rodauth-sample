# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Gear, type: :model do
  describe '#gear_inches' do
    it 'returns gear_inches' do
      diameter_double = double('Diameterizable')
      allow(diameter_double).to receive(:diameter).and_return(10)
      gear = Gear.new(chainring: 52, cog: 11, wheel: diameter_double)
      expect(gear.gear_inches).to eq 47.3
    end
  end
end
