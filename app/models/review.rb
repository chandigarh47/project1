# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  hotel_id   :integer
#  user_id    :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :hotel, :optional => true
end
