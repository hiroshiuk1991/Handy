require 'faker'

User.create(username: 'GRams', first_name: "Gordon", last_name: "Ramsay", email: "gordonramsay@yahoo.co.uk", password: "password123", password_confirmation: "password123")
User.create(username: 'NigellaL', first_name: "Nigella", last_name: "Lawson", email: "NigellaLawson@yahoo.co.uk", password: "password123", password_confirmation: "password123")
User.create(username: 'MarcoP', first_name: "Marco", last_name: "Pierre-white", email: "Mpierrewhite@yahoo.co.uk", password: "password123", password_confirmation: "password123")
User.create(username: 'Blumey', first_name: "Heston", last_name: "Blumentile", email: "HestonB@yahoo.co.uk", password: "password123", password_confirmation: "password123")
User.create(username: 'Ms.smith', first_name: "Delia", last_name: "smith", email: "Dsmith@yahoo.co.uk", password: "password123", password_confirmation: "password123")
User.create(username: 'HollywoodLife', first_name: "Paul", last_name: "Hollywood", email: "Pholly@yahoo.co.uk", password: "password123", password_confirmation: "password123")
User.create(username: 'LadyB', first_name: "Mary", last_name: "Berry", email: "maryberry@yahoo.co.uk", password: "password123", password_confirmation: "password123")


puts 'Users created'





Recipe.create(dish_name: "Carbonara", user: User.all.sample, description: "A Italian dish, with bechamel sauce, panchetta and spaghetti.", instructions: "cook spaghetti, fry panchetta, make bechamel sauce, mix all together..enjoy")
Recipe.create(dish_name: "Dim Sum", user: User.all.sample, description: "An East Asian classic, tightly packed with strong flavours.", instructions: "create Dim sum pastry, add prawns and steam for 10 minutes.")
Recipe.create(dish_name: "Biriyani", user: User.all.sample, description: "A South Asian dish, full of spice while mixing rice, a choice of meet and potatoes.", instructions: "Cook rice, cook meat, and potatoes, mix together, eat it.")
Recipe.create(dish_name: "Strawberry Cheescake", user: User.all.sample, description: "A creamy dessert, topped with a strawberry coluis.", instructions: "Go to Waitrose, buy a cheescake, pass it off as your own, if anyone questions you call them racist!.")
Recipe.create(dish_name: "Buffalo Chicken Wings", user: User.all.sample, description: "A Italian dish, with bechamel sauce, panchetta and spaghetti.", instructions: "Cook rice, cook meat, and potatoes, mix together, eat it.")
Recipe.create(dish_name: "Sushi", user: User.all.sample, description: "Hailing from Japan, the addictive healthy sushi.", instructions: "Cut sushi, cook sushi rice and put together.")
Recipe.create(dish_name: "Jollof", user: User.all.sample, description: "West African special, mix of rice and seasoning.", instructions: "Cook rice, add seasoning, done!")
Recipe.create(dish_name: "Rissotto", user: User.all.sample, description: "A Italian dish, with rice, vegetarian or with a protein", instructions: "Cook rice, add butter, garlic, thyme, mushrooms, enjoy!")
Recipe.create(dish_name: "Jerk Chicken", user: User.all.sample, description: "Chicken seasoned, cooked in traditional jerk pan.", instructions: "Cook rice, add seasoning, done!")
Recipe.create(dish_name: "Devil's Food Cake", user: User.all.sample, description: "Chocolate cake, chocolate ganache, chocolate heaven.", instructions: "butter, milk, eggs, dark chocolate, vanilla extract, milk, more butter, mix and cook!")
Recipe.create(dish_name: "Maccaroons", user: User.all.sample, description: "Irresistbale decitant french bite sized desserts.", instructions: "Go to france, order macaroons, enjoy!")
Recipe.create(dish_name: "Lasagne", user: User.all.sample, description: "Italian dish of white sauce, tomato sauce with sheets of pasta between, traditionally with mince.", instructions: "Make white sauce, tomato sauce, layer ontop of each other and lasagne sheet ontop!")
Recipe.create(dish_name: "Mince pies", user: User.all.sample, description: "Traditional Christmas hand-size pie, a favourite of father christmas.", instructions: "Mince + Pie = Mince Pie!")

puts 'Recipes created'


50.times do Ingredient.create(
    ingredient_name:Faker::Food.ingredient
)
end 
puts 'All seeded'

50.times do 
    recep = Recipe.all.sample
    ingred = Ingredient.all.sample
    famount = Faker::Number.number(digits: 2)



    List.create(
    ingredient: ingred, 
    recipe: recep,
    amount: famount.to_s
)

end 


