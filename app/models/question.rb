class Question < ApplicationRecord
has_many :game_joins
has_many :games, through: :game_joins
belongs_to :user, optional: true
end
