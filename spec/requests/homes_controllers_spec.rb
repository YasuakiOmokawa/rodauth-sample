# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'HomesControllers', type: :request do
  it 'rootが機能すること' do
    get root_path

    expect(response).to have_http_status(:ok)
  end
end
