class Board
  include Mongoid::Document
  field :name, type: String
  field :coordinator_id, type: String
  field :allowed_votes, types: Integer
  field :active, type: Boolean

  has_many :list
  has_one :board_preferences
  has_many :session
end
