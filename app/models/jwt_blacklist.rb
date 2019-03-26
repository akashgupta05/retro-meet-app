class JWTBlacklist
  include Mongoid::Document
  include Devise::JWT::RevocationStrategies::Blacklist

  field :jti, type: String
end
