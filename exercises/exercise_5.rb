require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method
total_revenue = Store.sum(:annual_revenue)
puts "The total revenue of all stores is #{total_revenue}"

# Output the average annual revenue for all stores.
average_revenue = Store.average(:annual_revenue)
puts "The average revenue of all stores is #{average_revenue}"

# Output the number of stores that are generating $1M or more in annual sales
# Hint: Chain together where and size (or count) Active Record methods
million_revenue = Store.where("annual_revenue > 1000000").count
puts "There are #{million_revenue} stores that are generating $1M or more in annual sales."
