class RecipesController < ApplicationController
  
  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def create
    recipe = Recipe.new({
      title: params[:title],
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time]
    })
    recipe.save
    render json: recipe.as_json
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe.as_json
  end

  def update
    recipe = Recipe.find(params[:id])
    # update recipe
    render json: recipe.as_json
  end

end