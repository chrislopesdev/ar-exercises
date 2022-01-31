require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each{|store| puts store.name
  puts store.annual_revenue}

@womens_stores = Store.where(womens_apparel: true)
@womens_stores_less_than_one_million = @womens_stores.select{ |store| store.annual_revenue < 1000000 }

pp @womens_stores_less_than_one_million

# users = User.where(name: 'David', occupation: 'Code Artist').order(created_at: :desc)