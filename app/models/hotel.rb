# == Schema Information
#
# Table name: hotels
#
#  id         :integer          not null, primary key
#  name       :text
#  reviews_id :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hotel < ApplicationRecord
  belongs_to :user
  belongs_to :review
end
