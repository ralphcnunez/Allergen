class RecipeIngredientsController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @Recipe = Recipe.find(params[:id])
  end
  #
  # def update
  #   @ingredient = Ingredient.find(params[:id])
  #   @ingredient.update(ingredient_params)
  #   redirect_to ingredient_path(@ingredient)
  # end


end
