# frozen_string_literal: true

module Composite
  class CompositeTask < Task
    def initialize(name)
      super(name)
      @sub_tasks = []
    end

    def add_sub_task(task)
      @sub_tasks << task
      task.parent = self
    end
    alias << add_sub_task

    def remove_sub_task(task)
      @sub_tasks.delete(task)
      task.parent = nil
    end

    def get_time_required
      time = 0.0
      @sub_tasks.each { |task| time += task.get_time_required }
      time
    end

    def total_number_of_basic_tasks
      @sub_tasks.map(&:total_number_of_basic_tasks).sum
    end
  end
end
