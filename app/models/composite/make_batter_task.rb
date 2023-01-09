# frozen_string_literal: true

module Composite
  class MakeBatterTask < CompositeTask
    def initialize
      super('Make butter')
      add_sub_task(MixTask.new)
    end
  end
end
