# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  after_initialize :set_defaults, if: :new_record?

  private

  # attribute で処理しきれないインスタンス生成時の既定値をセットする場合オーバーライドすること
  #
  # example:
  #   def set_defaults
  #     self.reported_on ||= Date.current
  #   end
  #
  def set_defaults; end
end
