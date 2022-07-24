class ApplicationController < ActionController::Base
  before_action :authenticate

  private

  def authenticate
    binding.b
    rodauth.require_authentication # redirect to login page if not authenticated
  end
end
