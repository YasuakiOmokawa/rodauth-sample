# frozen_string_literal: true

module Observer
  class Employee
    attr_reader :name
    attr_accessor :title, :salary

    def initialize(name:, title:, salary:)
      @name = name
      @title = title
      @salary = salary
    end
  end
end
