class User
  include Mongoid::Document

  devise :database_authenticatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JWTBlacklist

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :notes, type: String
end
