## !!!
## THESE ARE NOT THE METHODS YOU ARE LOOKING FOR

class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select do |card|
      card.user == self
    end.collect { |card| card.recipe }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select { |a| a.user == self }.map { |a| a.ingredient }
  end

  def top_three_recipes
    # we need more than three recipes for a user
    # we expect to get [strawberry_shortcake, ants_on_a_log, pie] for scott
    my_recipe_cards = RecipeCard.all.select { |rc| rc.user == self }
    sorted = my_recipe_cards.sort_by { |rc| rc.rating }.reverse
    top_three = sorted.first(3)
    top_three.collect { |rc| rc.recipe }
    # binding.pry
  end

  def most_recent_recipe
    RecipeCard.all.select { |card| card.user == self }.sort_by { |card| card.date }.last.recipe
  end

  def self.all
    @@all
  end

end
