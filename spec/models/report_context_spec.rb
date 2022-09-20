# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ReportContext, type: :model do
  describe '#output_report' do
    let(:report_context) { build(:report_context, formatter: formatter) }

    context 'HtmlFormatter' do
      let(:formatter) { HtmlFormatter.new }

      it 'titleが正しいこと' do
        parsed_data = Nokogiri::HTML(report_context.output_report)

        expect(parsed_data.at_css('title').text).to eq '月次報告'
      end
    end
  end
end
