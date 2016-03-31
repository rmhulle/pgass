class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :sus_code
      t.string :description
      t.integer :quantity
      t.integer :vendor_id
      t.integer :contract_id
      t.boolean :ms_habilited
      t.integer :budget_id
      t.string :sia_informed

      t.timestamps null: false
    end
  end
end
