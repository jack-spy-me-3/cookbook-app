Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/first_recipe", to: "recipes#first_recipe_method"
  # get "/first_recipe" => "recipes#first_recipe_method"
end
