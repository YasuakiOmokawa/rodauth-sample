# frozen_string_literal: true

class Composite::MakeCakeTask < CompositeTask
  def initialize
    super('Make cake')
    add_sub_task(MakeBatterTask.new)
    add_sub_task(MixTask.new)
  end
end
