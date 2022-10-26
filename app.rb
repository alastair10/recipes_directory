# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/recipes_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipes_directory')

recipes_repository = RecipesRepository.new

# Print out each record from the result set .
# all method
recipes_repository.all.each do |record|
  p record
end

#find method
recipe = recipes_repository.find(1)
puts recipe.name # => 'Pizza'

recipe = recipes_repository.find(2)
puts recipe.cooking_time # => '90'