require 'faker'

User.create(username: 'GRams', first_name: "Gordon", last_name: "Ramsay", email: "gordonramsay@yahoo.co.uk", password: "password123", password_confirmation: "password123", img_url: "http://restaurant-arras.com.au/wp-content/uploads/2019/08/ramsay-chef.jpg", self_description: "Michellin star chef, focus on french, british and european cuisine.")
User.create(username: 'NigellaL', first_name: "Nigella", last_name: "Lawson", email: "NigellaLawson@yahoo.co.uk", password: "password123", password_confirmation: "password123", img_url: "https://images.gr-assets.com/authors/1236036248p8/21686.jpg", self_description: "Celebrity chef, making home-cooking easy and fun.")
User.create(username: 'MarcoP', first_name: "Marco", last_name: "Pierre-white", email: "Mpierrewhite@yahoo.co.uk", password: "password123", password_confirmation: "password123", img_url: "https://s3.eu-west-2.amazonaws.com/luxurylondon.co.uk-storage-bucket-001/images/articles-body/151/marco-pierre-white-cooking-1.jpg", self_description: "A Michellin star chef, high french cuisine.")
User.create(username: 'Blumey', first_name: "Heston", last_name: "Blumentile", email: "HestonB@yahoo.co.uk", password: "password123", password_confirmation: "password123", img_url: "https://i.dailymail.co.uk/i/pix/2009/02/26/article-1156002-03AB48D5000005DC-197_468x670.jpg", self_description: "A Scientific chef, here to change how you view cooking and food!")
User.create(username: 'Ms.smith', first_name: "Delia", last_name: "smith", email: "Dsmith@yahoo.co.uk", password: "password123", password_confirmation: "password123", img_url: "https://e2.365dm.com/18/11/768x432/skysports-delia-smith-norwich_4495596.jpg?20181122092545", self_description: "A classic british chef, a national cooking queen.")
User.create(username: 'HollywoodLife', first_name: "Paul", last_name: "Hollywood", email: "Pholly@yahoo.co.uk", password: "password123", password_confirmation: "password123", img_url: "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/30/2015/07/bakeoff4-630x472.jpg", self_description: "A star baking chef, defining The Great British Bake Off.")
User.create(username: 'LadyB', first_name: "Mary", last_name: "Berry", email: "maryberry@yahoo.co.uk", password: "password123", password_confirmation: "password123", img_url: "https://www.sundaypost.com/wp-content/uploads/sites/13/2016/08/5048120j-e1471532202706-1024x673.jpg", self_description: "I baked the royal cake...")


puts 'Users created'





Recipe.create(dish_name: "Carbonara", user: User.all.sample, description: "A Italian dish, with bechamel sauce, panchetta and spaghetti.", instructions: "cook spaghetti, fry panchetta, make bechamel sauce, mix all together..enjoy", dish_ingredients: "500g panchetta, 300g spaghetti, 100ml bechamel sauce")
Recipe.create(dish_name: "Dim Sum", user: User.all.sample, description: "An East Asian classic, tightly packed with strong flavours.", instructions: "create Dim sum pastry, add prawns and steam for 10 minutes.", dish_ingredients: "500g dim sum pasrty, 300g prawns")
Recipe.create(dish_name: "Biriyani", user: User.all.sample, description: "A South Asian dish, full of spice while mixing rice, a choice of meet and potatoes.", instructions: "Cook rice, cook meat, and potatoes, mix together, eat it.", dish_ingredients: "500g rice, 300g lamb, 300g potatoes")
Recipe.create(dish_name: "Strawberry Cheescake", user: User.all.sample, description: "A creamy dessert, topped with a strawberry coluis.", instructions: "Go to Waitrose, buy a cheescake, pass it off as your own, if anyone questions you call them racist!.", dish_ingredients: "400g cream cheese, 300g icing sugar, 100ml milk")
Recipe.create(dish_name: "Buffalo Chicken Wings", user: User.all.sample, description: "Famouns chicken wings.", instructions: "fry wings and coat with sauce.", dish_ingredients: "500g dim sum pasrty, 300g prawns")
Recipe.create(dish_name: "Sushi", user: User.all.sample, description: "Hailing from Japan, the addictive healthy sushi.", instructions: "Cut sushi, cook sushi rice and put together.", dish_ingredients: "500g salmon, 300g rice")
Recipe.create(dish_name: "Jollof", user: User.all.sample, description: "West African special, mix of rice and seasoning.", instructions: "Cook rice, add seasoning, done!", dish_ingredients: "500g rice, 300g tomatoes")
Recipe.create(dish_name: "Rissotto", user: User.all.sample, description: "A Italian dish, with rice, vegetarian or with a protein", instructions: "Cook rice, add butter, garlic, thyme, mushrooms, enjoy!", dish_ingredients: "500g rissotto rice, 300g mushrooms, 10g butters")
Recipe.create(dish_name: "Jerk Chicken", user: User.all.sample, description: "Chicken seasoned, cooked in traditional jerk pan.", instructions: "Cook rice, add seasoning, done!", dish_ingredients: "500g chicken")
Recipe.create(dish_name: "Devil's Food Cake", user: User.all.sample, description: "Chocolate cake, chocolate ganache, chocolate heaven.", instructions: "butter, milk, eggs, dark chocolate, vanilla extract, milk, more butter, mix and cook!", dish_ingredients: "500g flour, 300g sugar, 10 eggs, 100ml milk")
Recipe.create(dish_name: "Maccaroons", user: User.all.sample, description: "Irresistbale decitant french bite sized desserts.", instructions: "Go to france, order macaroons, enjoy!", dish_ingredients: "100g flour, 200g sugar, 100g butter, 50ml milk")
Recipe.create(dish_name: "Lasagne", user: User.all.sample, description: "Italian dish of white sauce, tomato sauce with sheets of pasta between, traditionally with mince.", instructions: "Make white sauce, tomato sauce, layer ontop of each other and lasagne sheet ontop!", dish_ingredients: "100 ml tomato sauce, 200ml white sauce. 500g mince meat, 300g cheese.")
Recipe.create(dish_name: "Mince pies", user: User.all.sample, description: "Traditional Christmas hand-size pie, a favourite of father christmas.", instructions: "Mince + Pie = Mince Pie!", dish_ingredients: "500g raisins, 300g pastry")

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


