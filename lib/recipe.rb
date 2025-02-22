class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def ingredients
    @ingredients_required.keys
  end

  def add_ingredient(ingredient, qty)
    @ingredients_required[ingredient] += qty
  end

  def amount_required(ingredient)
    @ingredients_required[ingredient]
  end

  def total_calories
    @ingredients_required.inject(0) {|tot_cal, ingredient| tot_cal + (ingredient[0].calories * ingredient[1])}
  end

end
