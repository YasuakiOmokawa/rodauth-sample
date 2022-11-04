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
    delegate :boolean_column_names, to: :first

    def default
      find(DEFAULT_ID)
    end
  end

  def boolean_column_names
    attributes.select { |_, value| value.in?([true, false]) }.keys.sort
  end
end
