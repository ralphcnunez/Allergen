class RecipesController < ApplicationController

  def index
    @recipe_hash = {}
    Recipe.all.each do |recipe|
      @recipe_hash[recipe] = recipe.ingredients.length
    end
  end

  def ingredient_count
    byebug
  end

  def new

  end
end
