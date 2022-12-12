# frozen_string_literal: true

class AddNextPaymentDateToLicenses < ActiveRecord::Migration[7.0]
  def change
    add_column :licenses, :next_payment_date, :date, null: false
  end
end
