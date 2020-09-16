# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "banana", price: 0.50, image_path: "filler", description: "A ripe banana", stock: 25)

Product.create(name: "Tide pods", price: 18, image_path: "filler", description: "Laundry detergent vessel", stock: 17)

Product.create(name: "Xbox", price: 100, image_path: "filler", description: "home gaming system", stock: 7)

Product.create(name: "Hair Brush", price: 2, image_path: "filler", description: "Hair detangling tool", stock: 45)

Product.create(name: "Dog Toy", price: 4, image_path: "filler", description: "durable squeaky toy for dogs", stock: 32)
