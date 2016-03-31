class AddQuantityToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :quantity, :integer
    add_column :contracts, :contract_number, :string
  end
end
