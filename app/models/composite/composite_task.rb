# frozen_string_literal: true

module Composite
  class CompositeTask < Task
    def initialize(name)
      super(name)
      @sub_tasks = []
    end

    def add_sub_task(task)
      @sub_tasks << task
    end
    alias_method :<<, :add_sub_task

    def remove_sub_tasks(task)
      @sub_tasks.delete(task)
    end

    def get_time_required
      time = 0.0
      @sub_tasks.each { |task| time += task.get_time_required }
      time
    end
  end
end
