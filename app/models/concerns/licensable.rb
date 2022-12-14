# frozen_string_literal: true

module Licensable
  extend ActiveSupport::Concern

  included do
    has_one :license,
            as: :licensable,
            touch: true,
            dependent: :destroy
  end
end
