class KeyPhraseSerializer < ActiveModel::Serializer
  attributes :id, :industry, :game_id, :phrases

  belongs_to :games
end
