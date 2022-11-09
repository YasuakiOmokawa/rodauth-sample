# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transaction::UpdatingContext, type: :model do
  subject(:context) { described_class.new(options, master_plan) }

  describe '#attributes' do
    subject { context.attributes }

    let(:master_plan) { build(:plan) } # trait指定なしの場合は無料プラン

    context 'with options' do
      let(:options) do
        defaults = { quantity: 1 }
        [
          Transaction::Option.new(**defaults.merge(option_type: 'api_client')),
          Transaction::Option.new(**defaults.merge(option_type: 'pdf_upload_count', quantity: 10))
        ]
      end

      it 'optionsが反映されること' do
        is_expected.to eq({
          api_client: true,
          max_paper_upload_count_unlimited: false
        }.stringify_keys)
      end
    end
  end
end
