# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transaction::UpdatingContext, type: :model do
  subject(:context) { described_class.new(options) }

  describe '#attributes' do
    subject { context.attributes }

    context 'with options' do
      let(:options) do
        defaults = { quantity: 1 }
        [
          Transaction::Option.new(**defaults.merge(option_type: 'api')),
          Transaction::Option.new(**defaults.merge(option_type: 'pdf_upload_count', quantity: 10))
        ]
      end

      it 'optionsが反映されること' do
        is_expected.to eq({
          api: true
        }.stringify_keys)
      end
    end
  end
end
