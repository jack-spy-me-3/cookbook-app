Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "recipes#index"
  get "/recipes", to: "recipes#index"
  get "/recipes/new", to: "recipes#new"
  post "/recipes", to: "recipes#create"
  get "/recipes/:id", to: "recipes#show"
  get "/recipes/:id/edit", to: "recipes#edit"
  patch "/recipes/:id", to: "recipes#update"
  delete "/recipes/:id", to: "recipes#destroy"

  # user sign up routes

  get "/sign_up", to: "users#new"
  post "/users", to: "users#create"

  # sign in and sign out routes
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end
