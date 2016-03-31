class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :contract_type
      t.date :expiration_date
      t.decimal :sus_value
      t.decimal :sus_complement

      t.timestamps null: false
    end
  end
end
