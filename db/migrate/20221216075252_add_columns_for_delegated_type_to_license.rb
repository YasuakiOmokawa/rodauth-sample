class AddColumnsForDelegatedTypeToLicense < ActiveRecord::Migration[7.0]
  def change
    change_table :licenses do |t|
      t.string :licensable_type, null: true
      t.bigint :licensable_id, null: true
      t.index %i[licensable_type licensable_id], unique: true, name: :index_polymorphic_key_licenses
    end
  end
end
