class KeyPhraseSerializer < ActiveModel::Serializer
  attributes :id, :industry, :game_id

  belongs_to :game
end
