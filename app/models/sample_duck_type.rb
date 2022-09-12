# frozen_string_literal: true

class SampleDuckType
  # 不可: このぐらいなら継承を使わずに書きたい
  class Animal
    # 抽象メソッド
    def speak(self)
    end
  end

  # スーパークラスを継承
  class Duck
    def speak
      puts 'Quack! Quack'
    end
  end

  # スーパークラスを継承
  class Dog
    def speak
      puts 'Bau! Bau!'
    end
  end
end