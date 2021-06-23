require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  before do
    # create user
    user = User.create({name: "Ace", email: "ace@gmail.com", password: "password"})
    # create recipes
    Recipe.create!([
      {title: "Pizza", ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", user_id: user.id},
      {title: "Empty Sandwich", ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", user_id: user.id},
      {title: "Licorice", ingredients: "Licorice", directions: "Buy licorice from store.", user_id: user.id}
    ])
  end
  describe "GET /recipes" do
    it "should return an array of recipes" do
      # send index request
      get "/recipes"
      # set recipes to response body (the data)
      recipes = JSON.parse(response.body)
      # tests
      expect(response).to have_http_status(200)
      expect(recipes.length).to eq(3)
    end
  end
  describe "GET /recipes/:id" do
    it 'should return a hash with the appropriate attributes' do
      # send show request
      get "/recipes/#{Recipe.first.id}"
      recipe = JSON.parse(response.body)
      # tests
      expect(response).to have_http_status(200)
      expect(recipe["title"]).to eq("Pizza")
      expect(recipe["ingredients"]).to eq("Flour, water, pepperoni, cheese")
    end
  end
  describe "POST /recipes" do
    it 'should create a new recipe' do
      # create a JWT for the user
      jwt = JWT.encode({user_id: User.first.id}, Rails.application.credentials.fetch(:secret_key_base), "HS256")
      # send the create request
      post "/recipes", params: {
        title: "Rice Crispy Treats", 
        ingredients: "Rice Crispies, Marshmallows", 
        directions: "Melt marshmallows, mix with rice cripies, shape, and let harden"
      },
      headers: {"Authorization" => "Bearer #{jwt}"}

      recipe = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(recipe["title"]).to eq("Rice Crispy Treats")
    end
    it 'returns unauthorized without a jwt' do
      # send the create request
      post "/recipes", params: {}
      expect(response).to have_http_status(401)
    end
    it 'returns an error status code with invalid data' do
       # create a JWT for the user
      jwt = JWT.encode({user_id: User.first.id}, Rails.application.credentials.fetch(:secret_key_base), "HS256")
      # send the create request
      post "/recipes", params: {},
      headers: {"Authorization" => "Bearer #{jwt}"}

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
