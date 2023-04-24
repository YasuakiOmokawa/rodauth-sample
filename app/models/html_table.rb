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
    html = +''
    wrap(html, 'table') do
      wrap(html, 'tbody') do
        rows.each do |row|
          wrap(html, 'tr') do
            row.each do |cell|
              wrap(html, 'td') do
                html << CGI.escapeHTML(cell.to_s)
              end
            end
          end
        end
      end
    end
  end

  private

  attr_reader :rows

  def wrap(html, type)
    html << '<' << type << '>'
    yield
    html << '</' << type << '>'
  end
end
