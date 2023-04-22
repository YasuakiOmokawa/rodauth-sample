# frozen_string_literal: true

require 'cgi/escape'

class HtmlTable
  def initialize(rows)
    @rows = rows
  end

  def to_s
    html = +''
    html << '<table><tbody>'
    rows.each do |row|
      html << '<tr>'
      row.each do |cell|
        html << '<td>' << CGI.escapeHTML(cell.to_s) << '</td>'
      end
      html << '</tr>'
    end
    html << '</tbody></table>'
  end

  private

  attr_reader :rows
end
