# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  let(:preparer) { Mechanic.new }

  it_behaves_like 'preparer'
end
