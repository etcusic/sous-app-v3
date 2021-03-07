class RecipesController < ApplicationController

    def index
        params[:permitted] = true
        @recipes = Recipe.where(user_id: params[:user_id])
    end

    def new
        @recipe = User.find_by_id(params[:user_id]).recipes.build
        10.times do
            @recipe.ingredients.build
        end
        # binding.pry 
    end

    # need to implement find or create by for ingredient
    def create
        new_recipe = Recipe.create(recipe_params)
        redirect_to user_recipes_path(new_recipe.user)
    end

    def show
        @recipe = Recipe.find_by_id(params[:id])
    end

    private

    def recipe_params
        params.require(:recipe).permit(
            :user_id,
            :name,
            :servings,
            :instructions,
            ingredients_attributes: [ :name, :quantity ]
          )
    end

end
