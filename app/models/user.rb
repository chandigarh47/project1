class User < ApplicationRecord

  

  has_many :reviews
  has_many :hotels

  validates :email, :presence => true, :uniqueness => true
end
