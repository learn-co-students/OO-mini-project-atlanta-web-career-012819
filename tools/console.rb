require_relative '../config/environment.rb'

celery = Ingredient.new("celery")
strawberries = Ingredient.new("strawberries")
peanut_butter = Ingredient.new("peanut butter")
raisins = Ingredient.new("raisins")

scott = User.new("Scott")
cat = User.new("Cat")
sam = User.new("Sam")
spike = User.new("Spike")
leigh = User.new("Leigh")

strawberry_shortcake = Recipe.new("Strawberry Shortcake")
ants_on_a_log = Recipe.new("Ants on a Log")
peanut_butter_sandwich = Recipe.new("Peanut Butter Sandwich")
pie = Recipe.new("Pie")

# Allergen.new(scott, peanut_butter)
# Allergen.new(cat, peanut_butter)
# Allergen.new(spike, peanut_butter)
# Allergen.new(spike, celery)
# Allergen.new(sam, strawberries)
# Allergen.new(cat, strawberries)
scott.declare_allergen(peanut_butter)
scott.declare_allergen(celery)
scott.declare_allergen(raisins)
cat.declare_allergen(peanut_butter)
spike.declare_allergen(peanut_butter)
spike.declare_allergen(celery)
sam.declare_allergen(strawberries)
cat.declare_allergen(strawberries)
leigh.declare_allergen(strawberries)

# RecipeCard.new(scott, strawberry_shortcake, Time.now)
# RecipeCard.new(scott, ants_on_a_log, Time.now)
# RecipeCard.new(spike, ants_on_a_log, Time.now)
scott.add_recipe_card(strawberry_shortcake, Time.now, 10)
scott.add_recipe_card(ants_on_a_log, Time.now, 3)
spike.add_recipe_card(ants_on_a_log, Time.now, 8)
scott.add_recipe_card(peanut_butter_sandwich, Time.now, 2)
scott.add_recipe_card(pie, Time.now, 8)

# RecipeIngredient.new(ants_on_a_log, celery)
# RecipeIngredient.new(ants_on_a_log, raisins)
# RecipeIngredient.new(ants_on_a_log, peanut_butter)
ants_on_a_log.add_ingredients([celery, raisins, peanut_butter])

binding.pry
# Pry.start
