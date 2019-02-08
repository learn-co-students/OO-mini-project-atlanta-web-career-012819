class Recipe

  attr_reader :name

  @@all = []

  ## BASK IN THE GLORY OF YOUR ACHIEVEMENT

  def initialize(name)
    @name = name
    @@all << self
  end

  def users
    RecipeCard.all.select do |card|
      card.recipe == self
    end.collect { |card| card.user }
    # binding.pry
  end

  def ingredients
    RecipeIngredient.all.select do |pairing|
      pairing.recipe == self
    end.collect { |pairing| pairing.ingredient }
    # binding.pry
  end

  def allergens
    Allergen.all.collect do |a|
      ingredients.select { |i| a.ingredient == i }
    end.flatten.uniq
    # binding.pry
  end

  def add_ingredients(arr_ingredients)
    arr_ingredients.each { |i| RecipeIngredient.new(self, i) }
  end

  def self.all
    @@all
  end

  def self.most_popular ## EXCELLENT, SMITHERS <><>
  end

end
