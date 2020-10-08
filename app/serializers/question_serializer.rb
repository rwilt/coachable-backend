class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :industry, :user_id

  belongs_to :game_joins
  belongs_to :games
  belongs_to :user
end
