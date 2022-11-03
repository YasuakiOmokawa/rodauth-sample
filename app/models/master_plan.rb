# frozen_string_literal: true

class MasterPlan < MasterData
  extend Enumerize

  DEFAULT_ID = 1 # plan_code : free

  enumerize :plan_code, in: %i[
    free
    pro
    light
  ]

  class << self
    def default
      find(DEFAULT_ID)
    end
  end
end
