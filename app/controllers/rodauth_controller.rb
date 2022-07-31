class RodauthController < ApplicationController
  # used by Rodauth for rendering views, CSRF protection, and running any
  # registered action callbacks and rescue_from handlers
  layout :rodauth_layout

  private

  def rodauth_layout
    "authentication"
  end
end
