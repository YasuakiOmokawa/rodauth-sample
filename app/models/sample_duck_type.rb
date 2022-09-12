# frozen_string_literal: true

class SampleDuckType
  # 不可: このぐらいなら継承を使わずに書きたい
  class Animal
    # 抽象メソッド
    def speak
    end
  end

  # スーパークラスを継承
  class Duck < Animal
    def speak
      puts 'Quack! Quack'
    end
  end

  # スーパークラスを継承
  class Dog < Animal
    def speak
      puts 'Bau! Bau!'
    end
  end
end