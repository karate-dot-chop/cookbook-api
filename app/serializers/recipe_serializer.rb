class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :directions, :image_url, :prep_time, :created_at

  belongs_to :user
  
  attribute :owner, if: :current_user

  def owner
    object.user_id == current_user.id
  end

end
