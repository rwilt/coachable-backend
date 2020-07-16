class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :industry

  has_many :game_joins

end
