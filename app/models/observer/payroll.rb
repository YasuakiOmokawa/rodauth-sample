# frozen_string_literal: true

module Observer
  class Payroll
    def update(changed_employee)
      puts "name: #{changed_employee.name} update salary!"
      puts "updated salary: #{changed_employee.salary}"
    end
  end
end
