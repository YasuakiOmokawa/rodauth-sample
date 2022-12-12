class AddNextPaymentDateToLicenses < ActiveRecord::Migration[7.0]
  def change
    add_column :licenses, :next_payment_date, :datetime, null: false
  end
end
