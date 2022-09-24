# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FactoryMethod::WaterLily, type: :model do
  let(:water_lily) { FactoryMethod::WaterLily.new('リコリコ') }

  describe '#grow' do
    specify { expect(water_lily.grow).to eq 'スイレン リコリコ は日光を浴びて育ちます。' }
  end
end
