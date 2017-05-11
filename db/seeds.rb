require 'open-uri'
require 'json'


# 1 recup json (open uri)
url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json_string = open(url).read

ingredients_data = JSON.parse(json_string)

puts "Destroying ingredients"
Ingredient.destroy_all



print "Creating ingredients"
ingredients_data['drinks'].each do |ingredient_data|
  Ingredient.create(name: ingredient_data["strIngredient1"])
  print "."
end
puts " done"

