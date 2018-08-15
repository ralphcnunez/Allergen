class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :allergies
  has_many :users, through: :allergies


  def self.sort_by_allergy_count
    sorted_array = Ingredient.all.sort_by do |ingredient|
      ingredient.allergies.length
    end

    return sorted_array.reverse
  end

end
