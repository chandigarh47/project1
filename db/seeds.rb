User.destroy_all
u1 = User.create :email => 'harp@co.au', :password => 'chicken'
u2 = User.create :email => 'katty@co.in', :password => 'chicken'


Hotel.destroy_all
# h1 = Hotel.create(:name => 'Royal Inn', :room => '200', :room_type => 'Deluxe', :price => '300', :amenity => 'Spa,Gym,Pool', :image => 'https://www.safarihotelsnamibia.com/wp-content/uploads/2014/11/Safari-Court-Hotel-Pool.jpg');
# h2 = Hotel.create(:name => 'Sparta Plaza', :room => '100', :room_type => 'Executive Suit', :price => '200', :amenity => 'Spa,Pool', :image => 'https://image.jimcdn.com/app/cms/image/transf/dimension=1190x10000:format=jpg/path/sa6549607c78f5c11/image/i8f67ac489a792e46/version/1456321295/majestic-barri%C3%A8re-cannes-best-hotel-suites-in-europe.jpg');
# h3 = Hotel.create(:name => 'Hotel Alpha', :room => '320', :room_type => 'Presidential Suit', :price => '350', :amenity => 'Spa,Gym', :image => 'https://img2.10bestmedia.com/Images/Photos/255131/BellagioExterior3_54_990x660_201404251834.jpg');
# h4 = Hotel.create(:name => 'The Quarto', :room => '300', :room_type => 'Queen',  :price => '460', :amenity => 'Spa,Gym,Pool,playing area', :image => 'http://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/1483032942/delaware-hotel-du-pont-BESTHOTEL1216.jpg?itok=YzAq_AUJ');
# h5 = Hotel.create(:name => 'Turtle on The Beach', :room => '250', :room_type => 'King', :price => '380', :amenity => 'Spa,Gym,Park', :image => 'https://amp.businessinsider.com/images/55f1d8ca9dd7cc11008b97fa-750-563.jpg');
# h6 = Hotel.create(:name => 'Hotel Paradise', :room => '200', :room_type => 'Junoir Suit', :price => '400', :amenity => 'Spa,Gym', :image => 'http://static.asiawebdirect.com/m/phuket/portals/hong-kong-hotels-ws/shared/teasersL/teaser_auto_gen/top10-hotels-pools-hong-kong/teaserMultiLarge/imageHilight/teaser.jpeg.jpg');
# h7 = Hotel.create(:name => 'JW Marriot', :room => '400', :room_type => 'Super Deluxe', :price => '360', :amenity => 'Gym,Pool', :image => 'https://image.dhgate.com/0x0/f2/albu/g5/M00/F0/03/rBVaI1mSzyqAGJWyAAIbKlC2qEs022.jpg');
h1 = Hotel.create :name => 'Royal Inn'
h2 = Hotel.create :name => 'Sparta Plaza'
# h3 = Hotel.create :name => 'Hotel Alpha', :room => 320, :room_type => 'Presidential Suit', :price => 350, :amenity => 'Spa,Gym', :image => 'https://img2.10bestmedia.com/Images/Photos/255131/BellagioExterior3_54_990x660_201404251834.jpg';
# h4 = Hotel.create :name => 'The Quarto', :room => 300, :room_type => 'Queen',  :price => 460, :amenity => 'Spa,Gym,Pool,playing area', :image => 'http://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/1483032942/delaware-hotel-du-pont-BESTHOTEL1216.jpg?itok=YzAq_AUJ';
# h5 = Hotel.create :name => 'Turtle on The Beach', :room => 250, :room_type => 'King', :price => 380, :amenity => 'Spa,Gym,Park', :image => 'https://amp.businessinsider.com/images/55f1d8ca9dd7cc11008b97fa-750-563.jpg';
# h6 = Hotel.create :name => 'Hotel Paradise', :room => 200, :room_type => 'Junoir Suit', :price => 400, :amenity => 'Spa,Gym', :image => 'http://static.asiawebdirect.com/m/phuket/portals/hong-kong-hotels-ws/shared/teasersL/teaser_auto_gen/top10-hotels-pools-hong-kong/teaserMultiLarge/imageHilight/teaser.jpeg.jpg';
# h7 = Hotel.create :name => 'JW Marriot', :room => 400, :room_type => 'Super Deluxe', :price => 360, :amenity => 'Gym,Pool', :image => 'https://image.dhgate.com/0x0/f2/albu/g5/M00/F0/03/rBVaI1mSzyqAGJWyAAIbKlC2qEs022.jpg';


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
