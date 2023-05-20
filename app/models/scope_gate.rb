# frozen_string_literal: true

class ScopeGate
  def check_defined
    p defined?(a) # nil
    a = 1
    p defined?(a) # local-variable
    module M
      p defined?(a) # nil
      a = 2
      p defined?(a) # local-variable
      class C
        p defined?(a) # nil
        a = 3
        p defined?(a) # local-variable
        def m
          p defined?(a) # nil
          a = 4
          p defined?(a) # local-variable
          p a # 4
        end
        p a # 3
      end
      p a # 2
    end
    p a # 1
  end
end
