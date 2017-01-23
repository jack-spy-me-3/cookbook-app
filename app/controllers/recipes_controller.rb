class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render "index.html.erb"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @recipe = Recipe.new(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
    @recipe.save
    render "create.html.erb"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.assign_attributes(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
    @recipe.save
    render "update.html.erb"
    # @recipe.title = params[:title]
    # @recipe.chef = params[:chef]
    # @recipe.ingredients = params[:ingredients]
    # @recipe.directions = params[:directions]
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render "destroy.html.erb"
  end
end
