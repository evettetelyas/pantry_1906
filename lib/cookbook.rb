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
      hash= Hash.new
      hash[:name] = recipe.name
      hash[:details] = Hash.new({})
      hash[:details][:ingredients] = "ingredients go here?"
      hash[:details][:total_calories] = recipe.total_calories
      binding.pry
    end
  end

end
