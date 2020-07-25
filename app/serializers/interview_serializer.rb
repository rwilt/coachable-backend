class InterviewSerializer < ActiveModel::Serializer
  attributes :id, :industry, :title, :date, :interviewer, :company, :note, :result, :user_id, :simple_date
  

  belongs_to :user
end
