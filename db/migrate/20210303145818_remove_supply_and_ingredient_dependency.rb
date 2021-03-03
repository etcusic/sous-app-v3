class RemoveSupplyAndIngredientDependency < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ingredients, :supply_id
    drop_table :supplies
    add_reference :consumables, :pantry, index: true, foreign_key: true
  end
end
