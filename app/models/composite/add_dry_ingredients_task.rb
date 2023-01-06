# frozen_string_literal: true

module Composite
  class AddDryIngredientsTask < Task
    def initialize
      super('Add dry ingredients')
    end

    # 小麦粉と砂糖を加えるのに1分
    def get_time_required
      1.0
    end
  end
end
