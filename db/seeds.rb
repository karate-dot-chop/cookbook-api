# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.create([
  {title: "Raw Eggs", chef: "Jay Wengrow", ingredients: "One live chicken", directions: "Squeeze the chicken", prep_time: 10},
  {title: "Empty Sandwich", chef: "Dani Zaghian", ingredients: "Two slices of bread", directions: "Place one slice of bread on top of the other", prep_time: 5},
  {title: "Ice Cubes", chef: "Peter Jang", ingredients: "Water", directions: "Place water in freezer", prep_time: 120},
  {title: "Butternut Squash Soup", chef: "Ace", ingredients: "Squash, creme fraisce", directions: "Place squash in blender, garnish with creme", prep_time: 30}
])