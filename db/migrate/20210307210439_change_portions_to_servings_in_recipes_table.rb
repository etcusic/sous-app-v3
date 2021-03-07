class ChangePortionsToServingsInRecipesTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :portions, :servings
  end
end
