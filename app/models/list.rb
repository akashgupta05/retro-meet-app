class List
  include Mongoid::Document
  field :name, type: String
  field :board_id, type: String

  belongs_to :board
  has_many :card, through :user
end
