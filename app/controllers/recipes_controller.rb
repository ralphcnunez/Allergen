class RecipesController < ApplicationController

  def index
    @recipe_hash = {}
    Recipe.all.each do |recipe|
      @recipe_hash[recipe] = recipe.ingredients.length
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @users = User.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe)
  end


  private

		def recipe_params
			params.require(:recipe).permit(:recipe_name, :user_id)
		end

end
