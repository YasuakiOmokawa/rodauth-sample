# frozen_string_literal: true

class MasterPlan < MasterData
  extend Enumerize

  enumerize :plan_code, in: %i[
    free
    pro
    light
  ]
end
