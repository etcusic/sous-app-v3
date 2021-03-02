class ChangeCostInConsumables < ActiveRecord::Migration[6.0]
  def change
    change_table :consumables do |t|
      t.remove :cost
      t.integer :cost_per_unit
    end
  end
end
