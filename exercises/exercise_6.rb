require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ace", last_name: "Ventura", hourly_rate: 50)
@store1.employees.create(first_name: "Billy", last_name: "Bob", hourly_rate: 60)

@store2.employees.create(first_name: "Chris", last_name: "Lopes", hourly_rate: 60)
@store2.employees.create(first_name: "Zara", last_name: "Khan", hourly_rate: 60)
@store2.employees.create(first_name: "David", last_name: "Zhou", hourly_rate: 60)
