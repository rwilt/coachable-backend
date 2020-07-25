class KeyPhraseSerializer < ActiveModel::Serializer
  attributes :id, :industry, :game_id, :phrases, :user_id

  belongs_to :user
end
