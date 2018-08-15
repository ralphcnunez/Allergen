class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.sort_by_allergy_count
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @recipes = @ingredient.recipes
  end

  # def new
  #   @ingredient = Ingredient.new
  #
  # def create
	#   @ingredient = Ingredient.new(ingredient_params)
	#   @ingredient.save
	#   redirect_to ingredient_path(@ingredient)
	# end
  #
  # private
  #
  # def ingredient_params
  #   params.require(:ingredient).permit(:ingredient_name)
  # end
end
