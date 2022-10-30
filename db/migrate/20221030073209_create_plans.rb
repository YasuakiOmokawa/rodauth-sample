class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|

      t.timestamps
    end
  end
end
