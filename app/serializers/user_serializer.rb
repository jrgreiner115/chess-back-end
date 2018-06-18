class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :wins, :losses

  has_many :user_games
  # has_many :users through: :user_games
end
