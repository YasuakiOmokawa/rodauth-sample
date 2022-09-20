# frozen_string_literal: true

class HtmlFormatter
  def output_report(context)
    root = Nokogiri::HTML::DocumentFragment.parse('')
    Nokogiri::HTML::Builder.with(root) do |doc|
      doc.head do
        doc.title context.title
      end
      doc.body do
        context.text.each do |line|
          doc.p line
        end
      end
    end
    root.to_html
  end
end
