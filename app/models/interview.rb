class Interview < ApplicationRecord
belongs_to :user

def simple_date
self.date.strftime("%F")
end

end
