class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :directions, :image_url, :prep_time, :created_at

  belongs_to :user
end
