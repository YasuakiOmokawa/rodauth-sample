# frozen_string_literal: true

require 'etc'

class Proxy::AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    return if Etc.getlogin == @owner_name

    raise "Illegal access to #{@owner_name}: #{Etc.getlogin} cannot access account."
  end
end
