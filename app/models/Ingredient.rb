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
    counts = {}

    Allergen.all.each do |allergy|
      counts[allergy.ingredient] ||= 0
      counts[allergy.ingredient] += 1
    end

    counts.max_by { |ing,count| count }.first
    # binding.pry
  end

end
