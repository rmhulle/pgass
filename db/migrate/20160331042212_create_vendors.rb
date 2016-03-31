class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :cnpj_code
      t.string :cnes_code
      t.string :nature
      t.integer :provider_id
      t.string :provider_type

      t.timestamps null: false
    end
  end
end
