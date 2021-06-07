class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :directions, :image_url, :prep_time, :user, :ingredients_list, :directions_list, :friendly_created_at, :friendly_prep_time

  def user
    ActiveModel::SerializableResource.new(object.user)
  end
  # has_one :user
end
