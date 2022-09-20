# frozen_string_literal: true

FactoryBot.define do
  factory :report_context, class: 'ReportContext' do
    initialize_with { new(formatter) }
  end
end
