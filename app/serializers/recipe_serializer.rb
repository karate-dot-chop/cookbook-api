class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :directions, :image_url, :prep_time, :ingredients_list, :directions_list, :friendly_created_at, :friendly_prep_time

  belongs_to :user
end
