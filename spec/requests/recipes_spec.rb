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
end
