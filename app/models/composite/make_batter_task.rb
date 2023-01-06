# frozen_string_literal: true

module Composite
  class MakeBatterTask < Task
    def initialize
      super('Make butter')
      @sub_tasks = []
      add_sub_task(AddDryIngredientsTask.new)
      add_sub_task(AddLiquidsTask.new)
      add_sub_task(MixTask.new)
    end

    def add_sub_task(task)
      @sub_tasks << task
    end

    def remove_sub_tasks(task)
      @sub_tasks.delete(task)
    end

    # バターをつくっていきまーす
    def get_time_required
      time = 0.0
      @sub_tasks.each { |task| time += task.get_time_required }
      time
    end
  end
end
