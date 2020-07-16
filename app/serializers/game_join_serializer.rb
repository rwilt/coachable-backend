class GameJoinSerializer < ActiveModel::Serializer
  attributes :id, :answer, :question_id, :game_id, :score, :result_summary

# belongs_to :question
# belongs_to :game
end
