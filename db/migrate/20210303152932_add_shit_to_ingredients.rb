class AddShitToIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :consumables, :type
    change_table :ingredients do |t|
      t.string :name
      t.string :unit
      t.float :quantity
      t.float :cost_per_unit
    end
  end
end
