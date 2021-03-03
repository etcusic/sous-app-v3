class ChangeCostPerUnitInConsumbables < ActiveRecord::Migration[6.0]
  def change
    change_column :consumables, :cost_per_unit, :float
  end
end
