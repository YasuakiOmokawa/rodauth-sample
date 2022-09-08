# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Wheel, type: :model do
  let(:diameterizable) { described_class.new(26, 1.5) }

  it_behaves_like 'diameterizable'
end
