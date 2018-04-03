class User < ApplicationRecord
  has_secure_password
  has_many :hotels
  has_many :reviews
end
