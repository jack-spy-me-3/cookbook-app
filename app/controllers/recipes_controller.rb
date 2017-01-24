class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render "index.html.erb"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    @are_you_right = true
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @recipe = Recipe.new(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
    @recipe.save
    flash[:success] = "Recipe has been updated!"
    redirect_to "/recipes/#{@recipe.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.assign_attributes(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
    @recipe.save
    flash[:success] = "Recipe has been updated!"
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    flash[:danger] = "Recipe has been deleted!"
    flash[:warning] = "The recipe that has been deleted was #{@recipe.id}"
    redirect_to "/recipes"
  end
end
