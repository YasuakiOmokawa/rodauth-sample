# frozen_string_literal: true

RSpec.shared_examples 'preparer' do
  it { expect(preparer).to be_respond_to(:prepare_trip) }
end
