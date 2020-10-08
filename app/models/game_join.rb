class GameJoin < ApplicationRecord
belongs_to :question, optional: true
belongs_to :game, optional: true

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
