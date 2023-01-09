# frozen_string_literal: true

module Composite
  class MakeCakeTask < CompositeTask
    def initialize
      super('Make cake')
      add_sub_task(MakeBatterTask.new)
      add_sub_task(MixTask.new)
    end
  end
end
