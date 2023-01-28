# frozen_string_literal: true

require 'etc'

module Proxy
  class AccountProtectionProxy
    def initialize(real_object, owner_name)
      @real_object = real_object
      @owner_name = owner_name
    end

    def balance
      check_access
      @real_object.balance
    end

    def deposit(amount)
      check_access
      @real_object.deposit(amount)
    end

    def withdraw(amount)
      check_access
      @real_object.withdraw(amount)
    end

    def check_access
      return if Etc.getlogin == @owner_name

      raise "Illegal access to #{@owner_name}: #{Etc.getlogin} cannot access account."
    end
  end
end
