class InterviewSerializer < ActiveModel::Serializer
  attributes :id, :industry, :title, :date, :interviewer, :company, :note, :result, :user_id

  belongs_to :user
end
