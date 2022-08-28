# frozen_string_literal: true

json.extract! dashboard, :id, :created_at, :updated_at
json.url dashboard_url(dashboard, format: :json)
