class User < ApplicationRecord
has_many :games
has_many :game_joins, through: :game
has_many :interviews
has_one :calendar
end
