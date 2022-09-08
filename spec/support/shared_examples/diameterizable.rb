# frozen_string_literal: true

RSpec.shared_examples 'diameterizable' do
  it { expect { diameterizable.width }.to_not raise_error }
end
