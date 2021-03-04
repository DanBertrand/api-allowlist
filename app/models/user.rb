class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Allowlist

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: self


  # def on_jwt_dispatch(token, payload)
  #   super
  #   do_something(token, payload)
  # end


end
