Image.create!([
  {url: "https://tse1.mm.bing.net/th?id=OIP.ExbPQDob7rYAGCxD0cf_pQHaEK&pid=Api&P=0&w=356&h=201", product_id: 1},
  {url: "https://tse4.mm.bing.net/th?id=OIP.ghWFA5Akv1XBR-t1q6JQcgHaFu&pid=Api&P=0&w=228&h=178", product_id: 1},
  {url: "http://weknowyourdreams.com/images/banana/banana-01.jpg", product_id: 1}
])
Category.create!([
  {name: "Electronics"},
  {name: "Furniture"},
  {name: "Food"},
  {name: "Pet Supplies"}
])
Supplier.create!([
  {name: "Thinkgeek", email: "thinkgeek@gmail.com", phone_number: "817-555-2345"},
  {name: "Jack Daniels", email: "jackdaniels@gmail.com", phone_number: "324-765-4567"},
  {name: "Microsoft", email: "microsoft@live.com", phone_number: "165-789-3512"},
  {name: "Walmart", email: "walmart@gmail.com", phone_number: "555-666-4444"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 5, status: "carted", order_id: nil},
  {user_id: 3, product_id: 4, quantity: 12, status: "carted", order_id: nil},
  {user_id: 4, product_id: 7, quantity: 3, status: "carted", order_id: nil},
  {user_id: 1, product_id: 5, quantity: 7, status: "carted", order_id: nil}
])
Product.create!([
  {name: "Xbox", price: "100.0", description: "home gaming system", stock: 7, supplier_id: 3},
  {name: "Tide pods", price: "18.0", description: "Laundry detergent vessel", stock: 17, supplier_id: 4},
  {name: "Hair Brush", price: "2.0", description: "Hair detangling tool", stock: 45, supplier_id: 4},
  {name: "Banana", price: "1.0", description: "A ripe banana.", stock: 5, supplier_id: 4},
  {name: "Gandalf pipe", price: "35.0", description: "A recreation of the pipe used by Gandalf in the LOTR series", stock: 5, supplier_id: 1},
  {name: "Playstation 5", price: "500.0", description: "Home entertainment console designed by Sony", stock: 16, supplier_id: 1},
  {name: "Dog Toy", price: "4.0", description: "durable squeaky toy for dogs", stock: 32, supplier_id: 2},
  {name: "Chair", price: "45.0", description: "It's a chair. You sit in it.", stock: 45, supplier_id: 2},
  {name: "Laptop", price: "350.0", description: "Great for when you need to get some work done on the go!", stock: 10, supplier_id: 3},
  {name: "Nerf Gun", price: "35.0", description: "A foam dart gun that you will always lose the darts for within the first week of having it.", stock: 25, supplier_id: 4},
  {name: "MTG Booster Pack", price: "20.0", description: "Magic The Gathering Booster pack for the new Rise of Zandikar expansion.", stock: 15, supplier_id: 4},
  {name: "Comic Book", price: "15.0", description: "A comic book detailing the adventures of a nondescript hero/heroine.", stock: 5, supplier_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "4.0", tax: "0.36", total: "4.36"},
  {user_id: 1, subtotal: "4.0", tax: "0.36", total: "4.36"},
  {user_id: 1, subtotal: "4.0", tax: "0.36", total: "4.36"},
  {user_id: 1, subtotal: "4.0", tax: "0.36", total: "4.36"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 3},
  {product_id: 3, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 9, category_id: 1},
  {product_id: 8, category_id: 2}
])
User.create!([
  {name: "Blake", email: "blake@gmail.com", password_digest: "$2a$12$6MEsQmm4DgEm6/ltTSxYa.0RSbOZuS6uEgJfpZ1AMAeuMMu0kQUDS", admin: false},
  {name: "Admin", email: "admin@gmail.com", password_digest: "$2a$12$SmvobV8mKcQH0kRhjW4wgOTDN/pSeN.xr0tQXVSCj2m57z8bQsQmy", admin: false},
  {name: "Goku", email: "goku@gmail.com", password_digest: "$2a$12$6boAEcTRuxi1TVUqj4y.K.vFESINQUZpbarYKfuEEDnRR2MMBi47O", admin: false},
  {name: "Jill", email: "jill@gmail.com", password_digest: "$2a$12$CJTlTroToIczv2F/dKeIbuEh4I5nFRLfUaawKM2alWOfTYzwSR0dK", admin: true}
])
