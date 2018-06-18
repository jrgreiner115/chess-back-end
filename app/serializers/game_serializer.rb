class GameSerializer < ActiveModel::Serializer
  attributes :id, :board

  has_many :user_games
  # has_many :games through: :user_games
end
