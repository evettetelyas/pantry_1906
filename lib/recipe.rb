class Recipe
  attr_reader :name, :ingredients

  def initialize(name)
    @name = name
    @ingredients = Hash.new(0)
  end

  def ingredients_required
    @ingredients
  end

  def add_ingredient(ingredient, qty)
    @ingredients[ingredient] += qty
  end

  def amount_required(ingredient)
    @ingredients[ingredient]
  end

  def total_calories

  end

end
