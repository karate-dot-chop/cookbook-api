User.create!([
  {name: "Ace", email: "ace@gmail.com", password: "password"},
  {name: "Cheddar", email: "cheddar@gmail.com", password: "password"},
  {name: "Dani", email: "dani@gmail.com", password: "password"},
  {name: "Alice", email: "alice@gmail.com", password: "password"},
  {name: "Riley", email: "riley@gmail.com", password: "password"}
])

Recipe.create!([
  {title: "Pizza", ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", prep_time: 455, image_url: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", user_id: 2},
  {title: "Empty Sandwich", ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", prep_time: 72, image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", user_id: 1},
  {title: "Licorice", ingredients: "Licorice", directions: "Buy licorice from store.", prep_time: 120, image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", user_id: 1},
  {title: "Rice Crispy Treats", ingredients: "Rice Crispies, Marshmallows", directions: "Melt marshmallows, mix with rice cripies, shape, and let harden", prep_time: 20, image_url: "https://i2.wp.com/www.twosisterscrafting.com/wp-content/uploads/2016/03/the-best-ever-rice-krispie-treats-main3.jpg", user_id: 1},
  {title: "Strawberry Rhubarb Pie", ingredients: "Strawberries, rhubarb, pie crust", directions: "Make filling, make crust, put filling in crust, bake", prep_time: 45, image_url: "https://www.simplyrecipes.com/thmb/e2zSk7O0gwgAyjujpoGx7DbTKC8=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2014__06__strawberry-rhubarb-pie-vertical-a-1600-b5f28ee80738408e8d34ad629a0b431c.jpg", user_id: 1},
  {title: "Corn on the cob!!!", ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", prep_time: 22, image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", user_id: 2},
  {title: "Raw Eggs", ingredients: "One live chicken", directions: "Squeeze the chicken", prep_time: 1, image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", user_id: 1},
  {title: "Chocolate Chip Cookies", ingredients: "Flour, butter, sugar, chocolate chips", directions: "Mix ingredients, bake a 350 for 15 minutes", prep_time: 20, image_url: "https://images-gmi-pmc.edge-generalmills.com/087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg", user_id: 1},
  {title: "Dumplings", ingredients: "Store bought pastry, filling, olive oil", directions: "Put filling into the pastry, brush with oil and boil", prep_time: 45, image_url: "https://mamalovestocook.com/wp-content/uploads/2020/05/boiled-dumplings.jpg", user_id: 1},
  {title: "Brownies", ingredients: "Flour, butter, sugar, cocoa", directions: "Mix ingredients, bake until crispy on outside", prep_time: 20, image_url: "https://celebratingsweets.com/wp-content/uploads/2019/02/Homemade-Brownies-1-5.jpg", user_id: 5},
  {title: "Mud Pie", ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", prep_time: 10, image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", user_id: 2}
])