# frozen_string_literal: true

class Proxy::AccountProxy
  def initialize(real_account)
    @subject = real_account
  end

  def method_missing(method_name, *args)
    Rails.logger.debug { "Delegating #{method_name} message to subject." }
    @subject.send(method_name, *args)
  end
end
