Rails.application.routes.draw do
  resources :allergies
  resources :recipe_ingredients
  resources :ingredients, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
