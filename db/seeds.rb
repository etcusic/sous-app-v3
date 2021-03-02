# rails g resource User name:string
# rails g resource Pantry user:belongs_to 
# rails g resource Recipe user:belongs_to name:string portions:integer instructions:text 
# rails g resource Consumable type:string name:string cost:float unit:string quantity:float 
# rails g resource Supply pantry:belongs_to
# rails g resource Ingredient recipe:belongs_to supply:belongs_to 

# relationships => User has_many :recipes, has_one :pantry | Pantry has_many :supplies | Recipe has_many :ingredients | Supply has_many :ingredients

# next step:
# rails g resource FoodOrder => user:belongs_to => contains an array constant of Recipes with corresponding amount - should I make a separate Recipe model to belong_to FoodOrder???

# other model considerations: Category, UnitOfMeasurement, Quantity

# methods to add in models:
# Pantry => inventory = self.supplies
# Recipe => cost_per_serving

# Ingredient.delete_all
# Supply.delete_all
# Recipe.delete_all
# Pantry.delete_all
# User.delete_all

User.create(name: "Mr Bojangles")
User.create(name: "Cat in the Hat")
User.create(name: "Willie Nelson")

Pantry.create(user_id: 1)
Pantry.create(user_id: 2)
Pantry.create(user_id: 3)

# ALL OF THESE PRICES NEED TO BE REASSESSED
FOOD = [
    {id: 1, pantry_id: 1, name: 'brown rice', cost: 0.06, unit: 'oz', quantity: 1},
    {id: 2, pantry_id: 1, name: 'quinoa', cost: 0.15, unit: 'oz', quantity: 1},
    {id: 3, pantry_id: 1, name: 'bread', cost: 0.13, unit: 'pcs', quantity: 1},
    {id: 4, pantry_id: 1, name: 'corn tortilla', cost: 0.08, unit: 'pcs', quantity: 1},
    {id: 5, pantry_id: 1, name: 'ground turkey', cost: 0.19, unit: 'oz', quantity: 1},
    {id: 6, pantry_id: 1, name: 'chicken', cost: 0.13, unit: 'oz', quantity: 1},
    {id: 7, pantry_id: 1, name: 'feta', cost: 0.3, unit: 'oz', quantity: 1},
    {id: 8, pantry_id: 1, name: 'egg', cost: 0.27, unit: 'pcs', quantity: 1},
    {id: 9, pantry_id: 1, name: 'corn', cost: 0.09, unit: 'oz', quantity: 1},
    {id: 10, pantry_id: 1, name: 'lime', cost: 0.5, unit: 'pcs', quantity: 1},
    {id: 11, pantry_id: 1, name: 'zucchini', cost: 0.09, unit: 'oz', quantity: 1},
    {id: 12, pantry_id: 1, name: 'jalapeno pepper', cost: 0.07, unit: 'oz', quantity: 1},
    {id: 13, pantry_id: 1, name: 'shredded carrot', cost: 0.18, unit: 'oz', quantity: 1},
    {id: 14, pantry_id: 1, name: 'mushroom', cost: 0.18, unit: 'oz', quantity: 1},
    {id: 15, pantry_id: 1, name: 'yellow bell pepper', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 16, pantry_id: 1, name: 'green bell pepper', cost: 0.7, unit: 'pcs', quantity: 1},
    {id: 17, pantry_id: 1, name: 'red bell pepper', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 18, pantry_id: 1, name: 'yellow onion', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 19, pantry_id: 1, name: 'red onion', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 20, pantry_id: 1, name: 'garlic', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 21, pantry_id: 1, name: 'green onion', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 22, pantry_id: 1, name: 'cilantro', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 23, pantry_id: 1, name: 'cabbage', cost: 0.04, unit: 'oz', quantity: 1},
    {id: 24, pantry_id: 1, name: 'canned tomato', cost: 0.1, unit: 'oz', quantity: 1},
    {id: 25, pantry_id: 1, name: 'cashew', cost: 0.1, unit: 'oz', quantity: 1}
    {id: 26, pantry_id: 1, name: 'sliced turkey', cost: .1, unit: 'oz', quantity: 1},
    {id: 27, pantry_id: 1, name: 'sliced cheddar', cost: .1, unit: 'oz', quantity: 1}
    # {id: 28, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 29, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 30, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 31, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 32, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 33, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 34, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 35, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 36, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 37, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 38, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 39, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1},
    # {id: 40, pantry_id: 1, name: '', cost: .1, unit: 'oz', quantity: 1}
]

FOOD.each {|item| Consumable.create(item)}

# Recipe.create(title: "Meatloaf", user_id: 1)
# Recipe.create(title: "Roast Chicken", user_id: 1)
# Recipe.create(title: "Stir Fry", user_id: 2)
# Recipe.create(title: "Spaghetti", user_id: 2)
# Recipe.create(title: "Bug Juice", user_id: 3)
# Recipe.create(title: "Pixie Farts", user_id: 3)

# FOOD = [
#     {name: "beef"},     # 1
#     {name: "chicken"},  # 2
#     {name: "carrots"},  # 3
#     {name: "onion"},    # 4
#     {name: "mushrooms"},    # 5
#     {name: "zucchini"},     # 6
#     {name: "spaghetti"},    # 7
#     {name: "tomato sauce"},     # 8
#     {name: "bugs"},     # 9
#     {name: "juice"},    # 10
#     {name: "pixies"},   # 11
#     {name: "fart"},     # 12
# ]

# FOOD.each.with_index {|item, i| Ingredient.create({name: item.name, pantry_id: (i + 1)})

# RecipeIngredient.create(name: "beef", ingredient_id: 1, recipe_id: 1)
# RecipeIngredient.create(name: "onion", ingredient_id: 4, recipe_id: 1)
# RecipeIngredient.create(name: "chicken", ingredient_id: 2, recipe_id: 2)
# RecipeIngredient.create(name: "carrots", ingredient_id: 3, recipe_id: 2)
# RecipeIngredient.create(name: "mushrooms", ingredient_id: 5, recipe_id: 3)
# RecipeIngredient.create(name: "onion", ingredient_id: 4, recipe_id: 3)
# RecipeIngredient.create(name: "carrots", ingredient_id: 3, recipe_id: 3)
# RecipeIngredient.create(name: "spaghetti", ingredient_id: 7, recipe_id: 4)
# RecipeIngredient.create(name: "tomato sauce", ingredient_id: 8, recipe_id: 4)
# RecipeIngredient.create(name: "mushrooms", ingredient_id: 5, recipe_id: 4)
# RecipeIngredient.create(name: "bugs", ingredient_id: 9, recipe_id: 5)
# RecipeIngredient.create(name: "juice", ingredient_id: 10, recipe_id: 5)
# RecipeIngredient.create(name: "pixies", ingredient_id: 11, recipe_id: 6)
# RecipeIngredient.create(name: "farts", ingredient_id: 12, recipe_id: 6)