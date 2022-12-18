# frozen_string_literal: true

class CreateOptionLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :option_licenses do |t|
      t.string :license_type, null: false, comment: 'ライセンスの種類'
      t.integer :quantity, null: false, comment: '数量'

      t.timestamps
    end
  end
end
