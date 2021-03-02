class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :supply

      t.timestamps
    end
  end
end
