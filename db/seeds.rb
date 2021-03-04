# rails g resource User name:string
# rails g resource Pantry user:belongs_to 
# rails g resource Recipe user:belongs_to name:string portions:integer instructions:text 
# rails g resource Consumable pantry:belongs_to type:string name:string cost_per_unit:float unit:string quantity:float 
# rails g resource Ingredient recipe:belongs_to type:string name:string cost_per_unit:float unit:string quantity:float

# relationships => User has_many :recipes, has_one :pantry | Pantry has_many :supplies | Recipe has_many :ingredients | Supply has_many :ingredients

# next step:
# rails g resource FoodOrder => user:belongs_to => contains an array constant of Recipes with corresponding amount - should I make a separate Recipe model to belong_to FoodOrder???

# $$$ A recipe (for something like a sauce) needs to be an Ingredient in a recipe as well

# other model considerations: Category, UnitOfMeasurement, Quantity

# methods to add in models:
# Pantry => available_recipes = self.user.recipes.select => where recipe.each_ingredient < pantry.equivalent_ingredient
# Recipe => cost_per_serving

# rails db:reset

User.create(name: "Mr Bojangles")
User.create(name: "Cat in the Hat")
User.create(name: "Willie Nelson")

Pantry.create(user_id: 1)
Pantry.create(user_id: 2)
Pantry.create(user_id: 3)

# ALL OF THESE PRICES NEED TO BE REASSESSED
FOOD = [
    {name: 'brown rice', cost_per_unit: 0.06, unit: 'oz', quantity: 1},
    {name: 'quinoa', cost_per_unit: 0.15, unit: 'oz', quantity: 1},
    {name: 'bread', cost_per_unit: 0.13, unit: 'pcs', quantity: 1},
    {name: 'corn tortilla', cost_per_unit: 0.08, unit: 'pcs', quantity: 1},
    {name: 'ground turkey', cost_per_unit: 0.19, unit: 'oz', quantity: 1},
    {name: 'chicken', cost_per_unit: 0.13, unit: 'oz', quantity: 1},
    {name: 'feta', cost_per_unit: 0.3, unit: 'oz', quantity: 1},
    {name: 'egg', cost_per_unit: 0.27, unit: 'pcs', quantity: 1},
    {name: 'corn', cost_per_unit: 0.09, unit: 'oz', quantity: 1},
    {name: 'lime', cost_per_unit: 0.5, unit: 'pcs', quantity: 1},
    {name: 'zucchini', cost_per_unit: 0.09, unit: 'oz', quantity: 1},
    {name: 'jalapeno pepper', cost_per_unit: 0.07, unit: 'oz', quantity: 1},
    {name: 'shredded carrot', cost_per_unit: 0.18, unit: 'oz', quantity: 1},
    {name: 'mushroom', cost_per_unit: 0.18, unit: 'oz', quantity: 1},
    {name: 'yellow bell pepper', cost_per_unit: 0.9, unit: 'oz', quantity: 1},
    {name: 'green bell pepper', cost_per_unit: 0.7, unit: 'pcs', quantity: 1},
    {name: 'red bell pepper', cost_per_unit: 0.9, unit: 'oz', quantity: 1},
    {name: 'yellow onion', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'red onion', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'garlic', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'green onion', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'cilantro', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'cabbage', cost_per_unit: 0.04, unit: 'oz', quantity: 1},
    {name: 'canned tomato', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'cashew', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'sliced turkey', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'sliced cheddar', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'pasta', cost_per_unit: 0.1, unit: 'oz', quantity: 1},
    {name: 'spinach', cost_per_unit: 0.1, unit: 'oz', quantity: 1}
]

3.times do |i|
    pantry = Pantry.find_by_id(i + 1)
    FOOD.each do |item| 
        pantry.consumables.build(item).save
    end
end


Recipe.create(user_id: 1, name: "Garlic Chicken", portions: 4, instructions: "")
Recipe.create(user_id: 1, name: "Cashew Chicken", portions: 4, instructions: "")
Recipe.create(user_id: 1, name: "Mushroom Chicken", portions: 4, instructions: "")
Recipe.create(user_id: 1, name: "Turkey Spaghetti", portions: 4, instructions: "")
Recipe.create(user_id: 1, name: "Turkey Tacos", portions: 4, instructions: "")
Recipe.create(user_id: 1, name: "Chicken Salad", portions: 4, instructions: "")

def add_ingredients(recipe_id, supply_ids)
    recipe = Recipe.find_by_id(recipe_id)
    supply_ids.map{|id| Consumable.find_by_id(id)} .each do |sup|
        recipe.ingredients.build({name: sup.name, cost_per_unit: sup.cost_per_unit, unit: sup.unit, quantity: rand(1..20)}).save
    end
end

add_ingredients(1, [1, 6, 20, 16, 14, 13])
add_ingredients(2, [1, 6, 25, 21, 13, 14])
add_ingredients(3, [1, 6, 14, 11, 19])
add_ingredients(4, [28, 5, 24, 14, 18])
add_ingredients(5, [5, 4, 12, 18, 10])
add_ingredients(6, [6, 29, 7, 13, 19, 21])