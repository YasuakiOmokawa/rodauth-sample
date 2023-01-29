# frozen_string_literal: true

class Adapter::Encrypter
  def initialize(key)
    @key = key
  end

  def encript(reader, writer)
    until reader.eof?
      encrypted = xor_csv(reader.readline, @key)
      writer.puts(encrypted)
    end
  end

  def xor_csv(str, key)
    ords = key.chars.map(&:ord).cycle
    str.chars.zip(ords).map { |c, o| c.ord ^ o }.join(',')
  end
end
