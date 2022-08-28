# frozen_string_literal: true

json.array! @dashboards, partial: 'dashboards/dashboard', as: :dashboard
