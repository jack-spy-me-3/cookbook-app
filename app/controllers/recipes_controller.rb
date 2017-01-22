class RecipesController < ApplicationController

  def first_recipe_method
    @recipe = Recipe.first
    render "recipe.html.erb"
  end

  def new_recipe_method
    render "new_recipe_form.html.erb"
  end

  def new_recipe_result_method
    @recipe = Recipe.new(title: params[:title], chef: params[:input_chef], ingredients: params[:input_ingredients], directions: params[:input_directions])
    @recipe.save
    render "new_recipe_result_view.html.erb"
  end

  def index
    @recipes = Recipe.all
    render "index.html.erb"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "show.html.erb"
  end
end
