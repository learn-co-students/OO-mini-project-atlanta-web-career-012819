class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    count = {}

    Allergen.all.each do |allergy|
      # count[allergy.ingredient.name] ||= 0
      if count[allergy.ingredient.name] == nil
        count[allergy.ingredient.name] = 0
      end

      count[allergy.ingredient.name] += 1
    end
    binding.pry
  end

end
