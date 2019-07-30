class Cookbook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes.push(recipe)
  end

  def summary
    hash = Hash.new({})
    @recipes.each do |recipe|
      hash[recipe] = Hash.new({})
      hash[recipe][:name] = recipe.name
      hash[recipe][:details] = Hash.new({})
      hash[recipe][:details][:ingredients] = ingredient_deets(recipe)
      hash[recipe][:details][:total_calories] = recipe.total_calories
    end
    hash.values
  end

  def ingredient_deets(recipe)
    hash = Hash.new({})
    sorted = recipe.ingredients_required.sort_by {|ingredient, qty| ingredient.calories * qty}.reverse
    sorted.each do |ingredient, qty|
      hash[ingredient] = Hash.new
      hash[ingredient][:ingredient] = ingredient.name
      hash[ingredient][:amount] = qty.to_s + " " + ingredient.unit
    end
    hash.values
  end

end
