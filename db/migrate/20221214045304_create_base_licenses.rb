# frozen_string_literal: true

class CreateBaseLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :base_licenses do |t|
      t.string :plan_code, null: false, comment: 'ライセンスに紐づくプラン'

      t.timestamps
    end
  end
end
