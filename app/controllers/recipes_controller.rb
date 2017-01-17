class RecipesController < ApplicationController

  def first_recipe_method
    @recipe = Recipe.first
    render "recipe.html.erb"
  end
end
