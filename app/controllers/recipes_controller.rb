class RecipesController < ApplicationController

    def index
        params[:permitted] = true
        @recipes = Recipe.find_by(user_id: params[:user_id])
        binding.pry
    end

    def show
        @recipe = Recipe.find_by_id(1)
    end

    private

    def recipe_params
        params.require(:id)
    end

end
