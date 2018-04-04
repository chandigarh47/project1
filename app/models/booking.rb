# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  name       :text
#  checkin    :integer
#  checkout   :integer
#  room_type  :text
#  price      :integer
#  hotel_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ApplicationRecord
  has_many :users
  belongs_to :hotel, :optional => true;

end
