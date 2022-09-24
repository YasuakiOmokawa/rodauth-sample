# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FactoryMethod::PondFactory, type: :model do
  let(:pond_factory) { FactoryMethod::PondFactory.new(number_animals: 3, number_plants: 2) }

  describe '#simulate_one_day' do
    specify do
      expect(pond_factory.simulate_one_day).to eq [
        'スイレン 植物0 は日光を浴びて育ちます。',
        'スイレン 植物1 は日光を浴びて育ちます。',
        'duck 動物0 is speaking now.',
        'duck 動物1 is speaking now.',
        'duck 動物2 is speaking now.',
        'duck 動物0 is eating now.',
        'duck 動物1 is eating now.',
        'duck 動物2 is eating now.',
        'duck 動物0 is sleeping now.',
        'duck 動物1 is sleeping now.',
        'duck 動物2 is sleeping now.'
      ]
    end
  end
end
