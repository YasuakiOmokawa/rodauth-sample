# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Gear, type: :model do
  describe '#gear_inches' do
    it 'returns gear_inches' do
      gear = Gear.new(chainring: 52, cog: 11, rim: 26, tire: 1.5)
      expect(gear.gear_inches).to eq 137.1
    end
  end
end
