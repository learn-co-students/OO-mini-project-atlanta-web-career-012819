class RecipeCard

  attr_reader :date, :user, :recipe, :rating # Each RecipeCard will have a date, user, & recipe

  @@all = [] # Class variable to hold all the recipe cards

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self # adds current RecipeCard to the list of all RecipeCards
  end

  # return array of all RecipeCard objects that have been created
  def self.all
    @@all
  end

end
