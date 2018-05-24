class User < ActiveRecord::Base
  has_one :response, dependent: :destroy
    has_secure_password
end 
