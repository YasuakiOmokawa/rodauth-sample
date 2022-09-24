# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FactoryMethod::Duck, type: :model do
  let(:duck) { FactoryMethod::Duck.new('ドナルドダック') }

  describe '#eat' do
    specify { expect(duck.eat).to eq 'duck ドナルドダック is eating now.' }
  end

  describe '#speak' do
    specify { expect(duck.speak).to eq 'duck ドナルドダック is speaking now.' }
  end

  describe '#sleep' do
    specify { expect(duck.sleep).to eq 'duck ドナルドダック is sleeping now.' }
  end
end
