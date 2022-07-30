class Recipe
  attr_accessor :name, :description, :rating, :done, :author

  def initialize(name, description, rating, done, author)
    @name = name
    @description = description
    @rating = rating
    @done = done
    @author = author
  end
end
