# frozen_string_literal: true

module Adapter
  class Encrypter
    def initialize(key)
      @key = key
    end

    def encript(reader, writer)
      reader.each_line do |line|
        encrypted = string_encrypt(line, @key)
        writer.print(encrypted)
      end
    end

    def string_encrypt(str, key)
      str.chars.collect { |e| [e.unpack1('C') ^ (key.to_i & 0xFF)].pack('C') }.join
    end
  end
end
