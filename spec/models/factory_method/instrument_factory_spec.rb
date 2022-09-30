# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FactoryMethod::InstrumentFactory, type: :model do
  let(:instrument_factory) { FactoryMethod::InstrumentFactory.new(3) }

  describe '#ship_out' do
    context '2回実施すると空配列' do
      before { instrument_factory.ship_out }
      specify do
        expect(instrument_factory.ship_out).to eq []
      end
    end

    context '1回実施すると複数作られる' do
      specify do
        expect(instrument_factory.ship_out.map(&:play)).to eq [
          'sax: Saxphone 0 is playing music.',
          'sax: Saxphone 1 is playing music.',
          'sax: Saxphone 2 is playing music.'
        ]
      end
    end
  end
end
