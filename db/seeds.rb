# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

url = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
data = JSON.parse(url)
ingredients = data["drinks"]
puts "Creating ingredients..."
count = 0

ingredients.each do |ingredient|
  new_ingredient = Ingredient.create(name: ingredient["strIngredient1"])
  count += 1
  p new_ingredient
end

puts "...#{count} ingredients created"

puts 'Now creating created'
# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# article = Article.new(title: 'NES', body: "A great console")
# article.remote_photo_url = url
# article.save
# Cocktail.create(name: 'Mojito', image_url: 'https://www.gogogogourmet.com/wp-content/uploads/2016/04/Champagne-Mojito-5.jpg')
# Cocktail.create(name: 'Sex on the Beach', image_url: 'http://stevethebartender.com.au/wp-content/uploads/2013/06/sex-on-the-beach-cocktail.jpg')
# Cocktail.create(name: 'Daiquiri', image_url: 'https://www.curiouscuisiniere.com/wp-content/uploads/2015/06/Green-Bay-Daiquiri-DSCF2995.3.png')
# Cocktail.create(name: 'Whiskey Sour', image_url: 'https://assets.punchdrink.com/wp-content/uploads/2017/10/Article-Best-Whiskey-Sour-Cocktail-Recipe-3.jpg')
# Cocktail.create(name: 'Mahattan', image_url: 'https://www.allfoodsrecipes.com/wp-content/uploads/2018/01/Manhattan-Cocktail.jpg')
# Cocktail.create(name: 'Moscow Mule', image_url: 'https://eatingrichly.com/wp-content/uploads/2016/05/cocktails-foodcom-9935-800x533.jpg')
# Cocktail.create(name: 'Espresso Martini', image_url: 'https://cdn.liquor.com/wp-content/uploads/2016/09/16092441/espresso-martini-1200x628-social.jpg')
# Cocktail.create(name: 'Caipirinha', image_url: "https://assets.epicurious.com/photos/579a2d8e437fcffe02f7230b/6:4/w_620%2Ch_413/caipirinha-072816.jpg")


url = "https://www.gogogogourmet.com/wp-content/uploads/2016/04/Champagne-Mojito-5.jpg"
cocktail = Cocktail.new(name: 'Mojito')
cocktail.remote_photo_url = url
cocktail.save

url = "http://stevethebartender.com.au/wp-content/uploads/2013/06/sex-on-the-beach-cocktail.jpg"
cocktail = Cocktail.new(name: 'Sex on the Beach')
cocktail.remote_photo_url = url
cocktail.save

url = "https://www.curiouscuisiniere.com/wp-content/uploads/2015/06/Green-Bay-Daiquiri-DSCF2995.3.png"
cocktail = Cocktail.new(name: 'Daiquiri')
cocktail.remote_photo_url = url
cocktail.save

url = "https://assets.punchdrink.com/wp-content/uploads/2017/10/Article-Best-Whiskey-Sour-Cocktail-Recipe-3.jpg"
cocktail = Cocktail.new(name: 'Whiskey Sour')
cocktail.remote_photo_url = url
cocktail.save

url = "https://www.allfoodsrecipes.com/wp-content/uploads/2018/01/Manhattan-Cocktail.jpg"
cocktail = Cocktail.new(name: 'Manhattan')
cocktail.remote_photo_url = url
cocktail.save

url = "https://eatingrichly.com/wp-content/uploads/2016/05/cocktails-foodcom-9935-800x533.jpg"
cocktail = Cocktail.new(name: 'Moscow Mule')
cocktail.remote_photo_url = url
cocktail.save

url = "https://cdn.liquor.com/wp-content/uploads/2016/09/16092441/espresso-martini-1200x628-social.jpg"
cocktail = Cocktail.new(name: 'Espresso Martini')
cocktail.remote_photo_url = url
cocktail.save

url = "https://assets.epicurious.com/photos/579a2d8e437fcffe02f7230b/6:4/w_620%2Ch_413/caipirinha-072816.jpg"
cocktail = Cocktail.new(name: 'Caipirinha')
cocktail.remote_photo_url = url
cocktail.save

"...Cocktails created"
