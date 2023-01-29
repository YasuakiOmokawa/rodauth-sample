# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FactoryMethod::SaxophoneFactory, type: :model do
  let(:saxophone_factory) { FactoryMethod::SaxophoneFactory.new(3) }

  describe '#ship_out' do
    context '1度出力するとアイテムの配列が空になる' do
      before { saxophone_factory.ship_out }

      specify do
        expect(saxophone_factory.ship_out).to eq []
      end
    end

    context '1回実施すると複数作られる' do
      specify do
        expect(saxophone_factory.ship_out.map(&:play)).to eq [
          'sax: Instrument 0 is playing music.',
          'sax: Instrument 1 is playing music.',
          'sax: Instrument 2 is playing music.',
        ]
      end
    end
  end
end
