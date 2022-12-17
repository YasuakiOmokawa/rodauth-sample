# frozen_string_literal: true

module Observer
  class Employee
    attr_reader :name, :title, :salary

    def initialize(name:, title:, salary:)
      @name = name
      @title = title
      @salary = salary
      @observers = [Payroll.new]
    end

    def salary=(new_salary)
      @salary = new_salary
      notify_observer
    end

    def notify_observer
      @observers.each do |observer|
        observer.update(self)
      end
    end
  end
end
