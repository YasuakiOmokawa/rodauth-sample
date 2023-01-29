# frozen_string_literal: true

class Observer::TaxMan
  def update(changed_employee)
    Rails.logger.debug { "name: #{changed_employee.name} send tax invoice!" }
  end
end
