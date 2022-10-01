# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FactoryMethod::TrumpetFactory, type: :model do
  let(:trumpet_factory) { FactoryMethod::TrumpetFactory.new(3) }

  describe '#ship_out' do
    context '1度出力するとアイテムの配列が空になる' do
      before { trumpet_factory.ship_out }
      specify do
        expect(trumpet_factory.ship_out).to eq []
      end
    end

    context '1回実施すると複数作られる' do
      specify do
        expect(trumpet_factory.ship_out.map(&:play)).to eq [
          'trumpet: Instrument 0 is playing music.',
          'trumpet: Instrument 1 is playing music.',
          'trumpet: Instrument 2 is playing music.'
        ]
      end
    end
  end
end
