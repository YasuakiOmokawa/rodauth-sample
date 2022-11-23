# frozen_string_literal: true

class CreateSubOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_options do |t|
      t.string :option_type, null: false, comment: 'オプションの種類'
      t.integer :quantity, null: false, comment: '数量'

      t.timestamps
    end
  end
end
