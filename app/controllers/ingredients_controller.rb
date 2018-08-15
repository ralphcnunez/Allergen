class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @student = Ingredient.new

  def show
    @ingredient = Ingredient.find(params[:id])

  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end







  private

  def ingredient_params
    params.require(:ingredient).permit(:ingredient_name)
  end
end