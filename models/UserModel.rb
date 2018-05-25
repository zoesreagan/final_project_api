class User < ActiveRecord::Base
  has_one :form, dependent: :destroy
    has_secure_password
end
