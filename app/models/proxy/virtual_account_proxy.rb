# frozen_string_literal: true

class Proxy::VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  delegate :deposit, to: :subject

  delegate :withdraw, to: :subject

  delegate :balance, to: :subject

  def subject
    @subject ||= @creation_block.call
  end
end
