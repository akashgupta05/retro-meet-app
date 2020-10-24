class BoardPreference
  include Mongoid::Document
  field :board_id, type: String
  field :list, type: String
  field :participants, type: String

  belongs_to :board
end
