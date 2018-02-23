require 'json'
require 'open-uri'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingre =  open(url).read
ingre_s = JSON.parse(ingre)

ingre_s["drinks"].each do |ingre|
  Ingredient.create(name: ingre["strIngredient1"])
end

Cocktail.create(name: "sex on the beach")
