# frozen_string_literal: true

require 'cgi/escape'

class HtmlTable
  def initialize(rows)
    @rows = rows
  end

  class Element
    def self.set_type(type)
      define_method(:type) { type }
    end

    def initialize(data)
      @data = data
    end

    def to_s
      "<#{type}>#{data}</#{type}>"
    end

    private

    attr_reader :data
  end

  %i[table tbody tr td].each do |type|
    klass = Class.new(Element)
    klass.set_type(type)
    const_set(type.capitalize, klass)
  end

  def to_s
    Table.new(
      Tbody.new(
        rows.map do |row|
          Tr.new(
            row.map do |cell|
              Td.new(CGI.escapeHTML(cell.to_s))
            end.join,
          )
        end.join,
      ),
    ).to_s
  end

  private

  attr_reader :rows
end
