# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Gear, type: :model do
  describe '#gear_inches' do
    it 'returns gear_inches' do
      diameter_double = instance_double(Wheel)
      allow(diameter_double).to receive(:width).and_return(10)
      gear = Gear.new(chainring: 52, cog: 11, wheel: diameter_double, observer: nil)
      expect(gear.gear_inches).to eq 47.3
    end
  end
end
