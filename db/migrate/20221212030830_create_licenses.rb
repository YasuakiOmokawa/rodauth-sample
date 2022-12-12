# frozen_string_literal: true

class CreateLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :licenses do |t|
      t.references :subscription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
