require 'faker'


10.times do User.create(
    username:Faker::TvShows::DrWho.character,
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    email:Faker::Internet.email,
    password:"$2a$10$FiW.nO0tVKmAVWKUf7i4besPicw7FEBLcC7bMrhYiWnePekcvVvpm"
)
end 
puts 'Users created'

10.times do 
    food = Faker::Food.dish
    user = User.all.sample
    desc = Faker::Food.description


Recipe.create(
    dish_name: food, 
    user: user,
    description: desc 
)

end 
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


