class GameJoin < ApplicationRecord
belongs_to :question
belongs_to :game

# def total_score
#     score = 0
#     if (self.score === nil){
#         self.score = 0
#     }
#     self.score.each do |s|
#         score += s
#     end
#     score
# end

end
