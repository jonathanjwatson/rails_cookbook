class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
    end

    def show
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to recipes_url
        else
            redirect_to new_recipe_url
        end
    end

    private
    def recipe_params
        params.require(:recipe).permit(:title, :description, :made_it_yet)
    end

end
