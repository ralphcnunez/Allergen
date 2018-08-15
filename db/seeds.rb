# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# Ingredient.delete(1..Ingredient.all.length)
# User.delete(1..User.all.length)
# Allergy.delete(1..Allergy.all.length)
# Recipe.delete(1..Recipe.all.length)
# RecipeIngredient.delete(1..RecipeIngredient.all.length)

tomato = Ingredient.create(ingredient_name: "Tomato")
squash = Ingredient.create(ingredient_name: "Squash")
spinach = Ingredient.create(ingredient_name: "Spinach")

ronald = User.create(name: "Ronald")
ralph = User.create(name: "Ralph")
andrew = User.create(name: "Andrew")

allergy1 = Allergy.create(user: ronald, ingredient: tomato)
allergy2 = Allergy.create(user: ronald, ingredient: squash)
allergy3 = Allergy.create(user: andrew, ingredient: squash)

tomato_soup = Recipe.create(recipe_name: "Tomato Soup", user: ronald)
squash_pie = Recipe.create(recipe_name: "Squash Pie", user: ralph)
spinach_dip = Recipe.create(recipe_name: "Spinach Dip", user: andrew)
spinach_squash_dip = Recipe.create(recipe_name: "Spinach and Squash Dip", user: andrew)

ri1 = RecipeIngredient.create(recipe: tomato_soup, ingredient: tomato)
ri2 = RecipeIngredient.create(recipe: squash_pie, ingredient: squash)
ri3 = RecipeIngredient.create(recipe: spinach_dip, ingredient: spinach)
ri4 = RecipeIngredient.create(recipe: spinach_squash_dip, ingredient: spinach)
ri5 = RecipeIngredient.create(recipe: spinach_squash_dip, ingredient: squash)
