# frozen_string_literal: true

FactoryBot.define do
  factory :gear, class: 'Gear' do
    chainring { 11 }
    cog { 10 }
    wheel { build(:wheel) }
    observer { nil }

    initialize_with { new(chainring:, cog:, wheel:, observer:) }
  end
end
