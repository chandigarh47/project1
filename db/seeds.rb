User.destroy_all
u1 = User.create :email => 'harp@co.au', :password => 'chicken'
u2 = User.create :email => 'katty@co.in', :password => 'chicken'


Hotel.destroy_all
h1 = Hotel.create :name => 'hotel alpha'
h2 = Hotel.create :name => 'sparta plaza'
h3 = Hotel.create :name => 'royal inn'
h4 = Hotel.create :name => 'the quarto'

Review.destroy_all
r1 = Review.create :content => 'good review'
r2 = Review.create :content => 'bad review'
r3 = Review.create :content => 'good review'


#reviews and hotels
h1.reviews << r1
h2.reviews << r2
h3.reviews << r3

u1.reviews << r1
u2.reviews << r3
u2.reviews << r2
