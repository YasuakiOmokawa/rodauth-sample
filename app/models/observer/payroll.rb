# frozen_string_literal: true

class Observer::Payroll
  def update(changed_employee)
    Rails.logger.debug { "name: #{changed_employee.name} update salary!" }
    Rails.logger.debug { "updated salary: #{changed_employee.salary}" }
  end
end
