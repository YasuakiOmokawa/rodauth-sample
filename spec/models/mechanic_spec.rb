# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  describe '#prepare_trip' do
    it 'respond to this method' do
      mechanic = Mechanic.new
      expect(mechanic).to respond_to(:prepare_trip)
    end
  end
end
