# == Schema Information
#
# Table name: hotels
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  room       :integer
#  room_type  :text
#  price      :integer
#  amenity    :text
#  reviews_id :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hotel < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :bookings
  has_many :reviews
end
