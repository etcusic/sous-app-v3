class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.integer :portions
      t.text :instructions

      t.timestamps
    end
  end
end
