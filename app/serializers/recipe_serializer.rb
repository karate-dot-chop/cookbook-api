class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :directions, :image_url, :prep_time, :chef, :ingredients_list, :directions_list, :friendly_created_at, :friendly_prep_time
end
