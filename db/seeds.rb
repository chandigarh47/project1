User.destroy_all
u1 = User.create :email => 'harp@co.au', :password => 'chicken'
u2 = User.create :email => 'katty@co.in', :password => 'chicken'


Hotel.destroy_all
h1 = Hotel.create(:name => 'Royal Inn', :room => '200', :room_type => 'Deluxe', :price => '300', :amenity => 'Spa,Gym,Pool', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg')
h2 = Hotel.create(:name => 'Sparta Plaza', :room => '400', :room_type => 'SuperDeluxe', :price => '1000', :amenity => 'Spa,Pool', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg')
h3 = Hotel.create(:name => 'Hotel Alpha', :room => '500', :room_type => 'Deluxe', :price => '1500', :amenity => 'Spa,Gym', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg')
h4 = Hotel.create(:name => 'The Quarto', :room => '800', :room_type => 'Deluxe',  :price => '1200', :amenity => 'Spa,Gym,Pool,playing area', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg')
h5 = Hotel.create(:name => 'Turtle on The Beach', :room => '550', :room_type => 'Deluxe', :price => '1100', :amenity => 'Spa,Gym,Park', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg')
h6 = Hotel.create(:name => 'Hotel Paradise', :room => '700', :room_type => 'Deluxe', :price => '900', :amenity => 'Spa,Gym', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg')
h7 = Hotel.create(:name => 'JW Marriot', :room => '900', :room_type => 'Deluxe', :price => '800', :amenity => 'Gym,Pool', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg')


Review.destroy_all
r1 = Review.create :content => 'good review'
r2 = Review.create :content => 'bad review'
r3 = Review.create :content => 'good review'

Booking.destroy_all
b1 = Booking.create :name => 'bill', :checkin => '10:00am', :checkout => '11:00pm', :room_type => 'deluxe', :price => '300'
b2 = Booking.create :name => 'jerry', :checkin => '1:00am', :checkout => '09:00pm', :room_type => 'super deluxe', :price => '800'
b3 = Booking.create :name => 'david', :checkin => '2:00am', :checkout => '04:00pm', :room_type => 'deluxe', :price => '300'


#reviews and hotels
h1.reviews << r1
h2.reviews << r2
h3.reviews << r3
h4.reviews << r2
h5.reviews << r1
# # # r2.hotel << h1 << h6 << h7

#users and reviews
u1.reviews << r1
u2.reviews << r3
u2.reviews << r2
#
# #booking and users
# b1.users << u1
# b2.users << u2
# b3.users << u3

# hotels and bookings
# h1.bookings << b1
# h2.bookings << b2
# h3.bookings << b3
