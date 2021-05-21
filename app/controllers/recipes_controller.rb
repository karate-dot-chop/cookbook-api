class RecipesController < ApplicationController

  def index
    if current_user
      recipes = Recipe.all
      # if params[:search_term]
      #   recipes = recipes.where("title iLIKE ?", "%#{params[:search_term]}%")
      # end
      # recipes.order(:id)
      render json: recipes
    else
      render json: [], status: :unauthorized
    end
  end

  def create
    if current_user
      recipe = Recipe.new({
        title: params[:title],
        ingredients: params[:ingredients],
        directions: params[:directions],
        prep_time: params[:prep_time],
        user_id: current_user.id
      })
      if recipe.save
        render json: recipe
      else
        render json: {errors: recipe.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {message: "You must be logged in to do that"}, status: :unauthorized
    end
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.title = params[:title] || recipe.title
    recipe.ingredients = params[:ingredients] || recipe.ingredients
    recipe.directions = params[:directions] || recipe.directions
    recipe.prep_time = params[:prep_time] || recipe.prep_time
    recipe.save
    render json: recipe
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: {message: "Recipe successfully obliterated!"}
  end

end