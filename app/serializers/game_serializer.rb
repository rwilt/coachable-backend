class GameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :final_score

  belongs_to :user
  has_many :game_joins
  
end
