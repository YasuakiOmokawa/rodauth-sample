# frozen_string_literal: true

module Observer
  class TaxMan
    def update(changed_employee)
      puts "name: #{changed_employee.name} send tax invoice!"
    end
  end
end
