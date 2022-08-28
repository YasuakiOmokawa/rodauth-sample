# frozen_string_literal: true

class HomesController < ApplicationController
  skip_before_action :authenticate

  # GET /homes or /homes.json
  def index; end
end
