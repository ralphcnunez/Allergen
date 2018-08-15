class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_recipes = @user.recipes
  end

end
