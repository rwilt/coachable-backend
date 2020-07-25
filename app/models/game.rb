class Game < ApplicationRecord
    belongs_to :user
    has_many :game_joins
    has_many :questions, through: :game_join
end
