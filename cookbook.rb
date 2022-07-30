require 'csv'
require_relative 'recipe'

class Cookbook
  # attr_reader :csv_file_path

  def initialize()
    # loads the existing recipe from CSV
    # create a recipe
    # put each line in a recipe
    # then put into an array of recipes
    @recipes = []
    # @csv_file_path = csv_file_path
    # load_csv
  end

  def all
    # returns all the recipes
    return @recipes
  end

  def add_recipe(recipe)
    # adds a new recipe to the cookbook
    # takes a recipe variable from where?
    @recipes << recipe
    # append_to_csv
  end

  def remove_recipe(recipe_index)
    # removes recipe from the cookbook
    @recipes.delete_at(recipe_index)
    # add_to_csv
  end

  def mark_as_done(recipe_index)
    @recipes[recipe_index].done = true
  end

  private

  # def load_csv
  #   CSV.foreach(@csv_file_path, col_sep: ',', quote_char: '"') do |row|
  #     recipe = Recipe.new(row[0], row[1], row[2], false, row[3])
  #     @recipes << recipe
  #   end
  # end

  # def append_to_csv
  #   CSV.open(@csv_file_path, 'ab', col_sep: ',', force_quotes: true, quote_char: '"') do |csv|
  #     csv << [@recipes[-1].name, @recipes[-1].description, @recipes[-1].rating, @recipes[-1].author]
  #   end
  # end

  # def add_to_csv
  #   CSV.open(@csv_file_path, 'wb', col_sep: ',', force_quotes: true, quote_char: '"') do |csv|
  #     # TODO: store each gift
  #     @recipes.each do |recipe1|
  #       csv << [recipe1.name, recipe1.description, recipe1.rating, recipe1.author]
  #     end
  #   end
  # end
end
