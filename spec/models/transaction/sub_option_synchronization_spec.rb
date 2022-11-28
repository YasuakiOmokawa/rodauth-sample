# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transaction::SubOptionSynchronization, type: :model do
  describe '#save' do
    let(:sub_option) { create(:sub_option) }

    context 'some context' do
      it 'some result' do
        binding.b
      end
    end
  end
end
