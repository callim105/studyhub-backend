# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'studybuddy', password: 'pass')
User.create(username: 'studylad', password: 'pass', bio: 'Just a lad who likes to study.')
User.create(username: 'workfromhome', password: 'pass')
User.create(username: 'leanmachine', password: 'pass')
User.create(username: 'tesla4life', password: 'pass')
User.create(username: 'okatschool', password: 'pass')
User.create(username: 'lja012', password: 'pass')

Hub.create(name: 'Starbucks', latitude: '41.891433', longitude: '-87.627171', address: ' 515 N State St, Chicago, IL 60611', wifi: true, restrooms: true, noise: 'Average' )

Hub.create(name: 'University Club of Chicago', latitude: '41.880974', longitude: '-87.624918', address: '76 E Monroe St, Chicago, IL 60603', wifi: true, restrooms: true, noise: 'Low' )

Hub.create(name: 'Chicago Yacht Club', latitude: '41.881266', longitude: '-87.616031', address: '400 E Monroe St, Chicago, IL 60603', wifi: true, restrooms: true, noise: 'High')
Hub.create(name: 'Belmont Starbucks', latitude: '41.939443', longitude: '-87.682181', address: '2159 W Belmont Ave, Chicago, IL 60618', wifi: true, restrooms: true, noise: 'Low')

Review.create(user_id: 1, hub_id: 1, rating: 3, content: "This is ok, doesn't really have much space.")

Review.create(user_id: 1, hub_id: 1, rating: 4, content: "They let me hang out for hours without interruption.")

Review.create(user_id: 2, hub_id: 2, rating: 5, content: "Really nice, this place is like Hogwarts!")

Review.create(user_id: 3, hub_id: 2, rating: 4, content: "Love this spot, very distinguished.")
Review.create(user_id: 5, hub_id: 3, rating: 1, content: "This place sucks, there are boats everywhere! Also, seagulls are super loud.")

Review.create(user_id: 7, hub_id: 4, rating: 5, content: "This is a really nice Starbucks, its always quiet with plenty of room to sit and work.")

