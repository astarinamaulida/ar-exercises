require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user for a store name (store it in a variable)
puts "Enter a store name"
store_name = gets.chomp

# Attempt to create a store with the inputted name but leave out the other fields
new_store = Store.create(name: store_name)

# Display the error messages provided back from ActiveRecord to the user 
# (one on each line) after you attempt to save/create the record
error_message = new_store.errors.messages
puts "Error #{error_message}! Failed to save the record."