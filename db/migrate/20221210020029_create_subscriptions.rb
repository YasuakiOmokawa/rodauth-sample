# frozen_string_literal: true

class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
