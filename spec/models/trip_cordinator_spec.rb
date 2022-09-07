# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TripCordinator, type: :model do
  let(:preparer) { TripCordinator.new }

  it_behaves_like 'preparer'
end
