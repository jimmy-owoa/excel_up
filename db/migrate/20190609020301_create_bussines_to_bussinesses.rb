class CreateBussinesToBussinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :bussines_to_bussinesses do |t|
      t.integer :sales_by_period_cash
      t.integer :sales_by_period_units
      t.integer :inventory_cash
      t.integer :inventory_units

      t.timestamps
    end
  end
end
