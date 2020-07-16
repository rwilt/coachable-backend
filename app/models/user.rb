class User < ApplicationRecord
has_many :games
has_many :game_joins, through: :games
has_many :interviews

end
