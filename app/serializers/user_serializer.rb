class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  # has_many :recipes, key: :last_recipe do
  #   object.recipes.last
  # end

  has_many :recipes, if: :current_user
end
