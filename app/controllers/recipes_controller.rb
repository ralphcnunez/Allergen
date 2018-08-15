class RecipesController < ApplicationController

  def index
    @recipes = Recipes.all 
  end

  def new

  end
end
