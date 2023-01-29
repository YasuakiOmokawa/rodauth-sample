# frozen_string_literal: true

class Composite::MakeBatterTask < CompositeTask
  def initialize
    super('Make butter')
    add_sub_task(MixTask.new)
  end
end
