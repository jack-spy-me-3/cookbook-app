Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "recipes#index"
  get "/first_recipe", to: "recipes#first_recipe_method"
  # get "/first_recipe" => "recipes#first_recipe_method"

  get "/new_recipe", to: "recipes#new_recipe_method"
  post "/new_recipe_result", to: "recipes#new_recipe_result_method"

  get "/recipes", to: "recipes#index"
  get "/recipes/:id", to: "recipes#show"
end
