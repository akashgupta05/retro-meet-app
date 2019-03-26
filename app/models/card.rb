class Card
  include Mongoid::Document
  field :content, type: String
  field :vote_count, type: Integer

  belongs_to :user
  has_many :vote
end
