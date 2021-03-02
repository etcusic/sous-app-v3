class CreateConsumables < ActiveRecord::Migration[6.0]
  def change
    create_table :consumables do |t|
      t.string :type
      t.string :name
      t.float :cost
      t.string :unit
      t.float :quantity

      t.timestamps
    end
  end
end
