class RecipesController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    recipes = Recipe.all
    # if params[:search_term]
    #   recipes = recipes.where("title iLIKE ?", "%#{params[:search_term]}%")
    # end
    # recipes.order(:id)
    render json: recipes
  end

  def create
    recipe = Recipe.new({
      title: params[:title],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      user_id: current_user.id
    })
    if recipe.save
      render json: recipe
    else
      render json: {errors: recipe.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
  end

  def update
    recipe = Recipe.find(params[:id])
    if current_user.id == recipe.user_id
      recipe.title = params[:title] || recipe.title
      recipe.ingredients = params[:ingredients] || recipe.ingredients
      recipe.directions = params[:directions] || recipe.directions
      recipe.prep_time = params[:prep_time] || recipe.prep_time
      recipe.image_url = params[:image_url] || recipe.image_url
      if recipe.save
        render json: recipe
      else
        render json: {errors: recipe.errors.full_messages}, status: :unprocessable_entity
      end
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: {message: "Recipe successfully obliterated!"}
  end

end