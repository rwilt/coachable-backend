class Interview < ApplicationRecord
belongs_to :user, optional: true

def simple_date
    if (self.date === nil)
        return ""
    end 
self.date.strftime("%B %e, %Y")
end

end
