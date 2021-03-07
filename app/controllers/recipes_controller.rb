class RecipesController < ApplicationController

    def index
        params[:permitted] = true
        @recipes = Recipe.where(user_id: params[:user_id])
    end

    def new
        @recipe = User.find_by_id(recipe_params[:user_id]).recipes.build
        20.times do |i|
            @recipe.ingredients.build
        end
        
    end

    def create
        binding.pry
    end

    def show
        @recipe = Recipe.find_by_id(recipe_params[:id])
    end

    private

    def recipe_params
        params.permit(:id, :user_id)
    end

end
