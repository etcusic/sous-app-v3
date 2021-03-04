class RecipesController < ApplicationController

    def index
        params[:permitted] = true
        @recipes = Recipe.where(user_id: params[:user_id])
    end

    def new
        # binding.pry
        @recipe = Recipe.new
    end

    def create
        binding.pry
    end

    def show
        @recipe = Recipe.find_by_id(recipe_params)
    end

    private

    def recipe_params
        params.require(:id, :user_id)
    end

end
