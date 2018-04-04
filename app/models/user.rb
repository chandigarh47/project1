# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  name            :text
#  date            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  has_secure_password
  has_many :hotels
  has_many :reviews
  has_many :bookings
end
