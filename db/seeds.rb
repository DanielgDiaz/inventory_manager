# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Root category
root = Category.create name: 'sport'
# Sport subcategories
basketball_cat = root.children.create name: 'basketball'
fitness_cat = root.children.create name: 'fitness'
# Basketball categories
basketball_cat.children.create name: 'clothing'
basketball_cat.children.create name: 'basketballs'
basketball_cat.children.create name: 'footwear'
# Fitness subcategories
fitness_cat.children.create name: 'dumbbells'
fitness_cat.children.create name: 'benches'
fitness_cat.children.create name: 'kettlebells'