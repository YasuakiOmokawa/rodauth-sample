# frozen_string_literal: true

module Composite
  class MakeCakeTask < CompositeTask
    def initialize
      super('Make cake')
      add_sub_task(MakeBatterTask.new)
      add_sub_task(FillPanTask.new)
      add_sub_task(BakeTask.new)
      add_sub_task(FrostTask.new)
      add_sub_task(LickSpoonTask.new)
    end
  end
end
