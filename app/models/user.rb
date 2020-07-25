class User < ApplicationRecord
has_many :games
has_many :game_joins, through: :games
has_many :questions, through: :game_joins
has_many :interviews
has_many :questions
has_many :key_phrases


    

end
