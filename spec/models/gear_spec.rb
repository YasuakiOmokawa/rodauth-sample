# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Gear, type: :model do
  describe '#gear_inches' do
    subject { gear.gear_inches }

    let(:gear) { build(:gear) }

    it { is_expected.to be_within(0.01).of(33.0) }
  end

  describe '#set_cog' do
    it 'call :changed and set new cog' do
      observer_mock = double('Observer')
      expect(observer_mock).to receive(:changed).with(52, 27)
      gear = Gear.new(chainring: 52, cog: 11, wheel: nil, observer: observer_mock)
      gear.set_cog(27)
    end
  end

  describe '#set_chainring' do
    it 'call :changed and set new chainring' do
      observer_mock = double('Observer')
      expect(observer_mock).to receive(:changed).with(50, 11)
      gear = Gear.new(chainring: 52, cog: 11, wheel: nil, observer: observer_mock)
      gear.set_chainring(50)
    end
  end
end
