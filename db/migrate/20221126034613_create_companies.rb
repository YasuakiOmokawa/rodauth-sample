# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false, comment: '会社名'
      t.string :address, null: false, comment: '住所'

      t.timestamps
    end
  end
end
