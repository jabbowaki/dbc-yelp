require 'faker'

jordan = {name: "Jordan Schreuder", email: "schreuderjo@gmail.com", password: "123abc"}
emily = {name: "Emily Owaki", email: "emily@gmail.com", password: "cats"}

jordan = User.create!(jordan)
emily = User.create!(emily)

hannahs = Restaurant.create!(name:"Hannah's Bretzel")
restaurant1 = Restaurant.create!(name: Faker::Company.name)
restaurant2 = Restaurant.create!(name: Faker::Company.name)
restaurant3 = Restaurant.create!(name: Faker::Company.name)
restaurant4 = Restaurant.create!(name: Faker::Company.name)

review1 = Review.create!(rating: 1, critique: "Yuck, so bland!", user: jordan, restaurant: hannahs)
review2 = Review.create!(rating: 5, critique: "Such food, such wow", user: jordan, restaurant: restaurant4)
review3 = Review.create!(rating: 3, critique: "I like turtles", user: emily, restaurant: restaurant3)
review4 = Review.create!(rating: 4, critique: "Bahahahahaha", user: emily, restaurant: restaurant2)
review5 = Review.create!(rating: 2, critique: "Moooooooooo", user: jordan, restaurant: restaurant1)
review6 = Review.create!(rating: 5, critique: "Meow meow meow", user: jordan, restaurant: restaurant3)
review6 = Review.create!(rating: 1, critique: "Ssssssssss", user: jordan, restaurant: restaurant3)

