# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transaction::SubOptionSynchronization, type: :model do
  subject(:syncronization) { described_class.new(company, client) }

  describe '#create!' do
    subject(:create!) { syncronization.create! }

    let(:client) { double('Client') }
    let(:company) { create(:company) }

    context '連携したいオプションがある場合' do
      before do
        option_class = Transaction::Option
        allow(client).to receive(:sub_options).and_return(
          [
            option_class.new(quantity: 1, option_type: 'api_client'),
            option_class.new(quantity: 1, option_type: 'max_paper_upload_count')
          ]
        )
      end

      context '同期対象でない場合' do
        it 'オプションの情報が同期されない' do
          expect { create! }.to_not change { company.reload.sub_options.size }
        end
      end

      context '同期対象である場合' do
        it 'オプションの情報が同期される' do
          expect { create! }.to change { company.reload.sub_options.size }
        end
      end
    end
  end
end
