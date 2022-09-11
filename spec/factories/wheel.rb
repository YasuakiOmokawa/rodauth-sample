# frozen_string_literal: true

FactoryBot.define do
  factory :wheel, class: 'Wheel' do
    rim { 10 }
    tire { 10 }

    initialize_with { new(rim:, tire:) }
  end
end
