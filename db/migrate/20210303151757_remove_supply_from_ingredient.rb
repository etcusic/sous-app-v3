class RemoveSupplyFromIngredient < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :supply_id
  end
end
