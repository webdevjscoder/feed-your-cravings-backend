# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Faker::Food.unique.dish --- this will create unqiue food dishes (meals)
# Faker::Number.decimal(l_digits: 2)
require 'faker'

Meal.delete_all

meal_1 = Meal.create(name: Faker::Food.unique.dish, price: Faker::Number.decimal(l_digits: 2))
meal_2 = Meal.create(name: Faker::Food.unique.dish, price: Faker::Number.decimal(l_digits: 2))
meal_3 = Meal.create(name: Faker::Food.unique.dish, price: Faker::Number.decimal(l_digits: 2))
meal_4 = Meal.create(name: Faker::Food.unique.dish, price: Faker::Number.decimal(l_digits: 2))
meal_5 = Meal.create(name: Faker::Food.unique.dish, price: Faker::Number.decimal(l_digits: 2))

category_1 = Category.create(name: Faker::Restaurant.type, meal_id: meal_1.id)
category_2 = Category.create(name: Faker::Restaurant.type, meal_id: meal_2.id)
category_3 = Category.create(name: Faker::Restaurant.type, meal_id: meal_3.id)
category_4 = Category.create(name: Faker::Restaurant.type, meal_id: meal_4.id)
category_5 = Category.create(name: Faker::Restaurant.type, meal_id: meal_5.id)


