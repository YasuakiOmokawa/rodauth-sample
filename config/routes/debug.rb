# frozen_string_literal: true

if Rails.application.config.action_mailer.delivery_method == :letter_opener
  mount LetterOpenerWeb::Engine, at: '/letter_opener'
end
