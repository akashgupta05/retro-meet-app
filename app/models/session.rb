class Session
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :start, type: Time
  field :end, type: Time
  field :duration, type: Integer
  field :duration_type, type: String

  belongs_to :board
end
