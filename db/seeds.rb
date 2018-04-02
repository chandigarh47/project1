User.destroy_all
u1.User.create :email => 'harp@co.au'
u1.User.create :email => 'katty@co.in'

Hotel.destroy_all
h1.Hotel.create :name => 'hotel alpha'
h2.Hotel.create :name => 'sparta plaza'
h3.Hotel.create :name => 'royal inn'
h4.Hotel.create :name => 'the quarto'

#reviews and hotels
h1.reviews << r1
h2.reviews << r2
h3.reviews << r3
