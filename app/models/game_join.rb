class GameJoin < ApplicationRecord
belongs_to :question
belongs_to :game
delegate :user to :question
end
