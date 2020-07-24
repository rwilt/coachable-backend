class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :photo_url, :username, :password_digest

  has_many :games
  has_many :game_joins
  has_many :interviews
  has_many :questions, through: :game_joins

end
