# frozen_string_literal: true

module Observer
  class Employee
    attr_reader :name, :title, :salary

    def initialize(name:, title:, salary:, payroll:)
      @name = name
      @title = title
      @salary = salary
      @payroll = payroll
    end

    def salary=(new_salary)
      @salary = new_salary
      @payroll.update(self)
    end
  end
end
