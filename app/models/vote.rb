class Vote
  include Mongoid::Document
  field :user_id, type: String
  field :card_id, type: String

  belongs_to :user
  belongs_to :card
end
