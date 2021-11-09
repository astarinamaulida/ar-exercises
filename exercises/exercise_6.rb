require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Add the following code directly inside the Store model (class): has_many :employees
Store.has_many :employees

# Add the following code directly inside the Employee model (class): belongs_to :store
Employee.belongs_to :store

# Add some data into employees. 
@store1.employees.create(first_name: "Astarina", last_name: "Maulida", hourly_rate: 70)
@store1.employees.create(first_name: "Marco", last_name: "Gamal", hourly_rate: 80)
@store1.employees.create(first_name: "Kioko", last_name: "Khaleesha", hourly_rate: 65)

@store2.employees.create(first_name: "Sora", last_name: "Eugenie", hourly_rate: 50)
@store2.employees.create(first_name: "Dewi", last_name: "Rahayu", hourly_rate: 60)
@store2.employees.create(first_name: "Bambang", last_name: "Hartanto", hourly_rate: 70)