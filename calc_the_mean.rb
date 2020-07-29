#Generate an array populated with 5000 random
#numbers between 0-1. Return the mean of the 
#values in the array

list = Array.new(5000) { rand }

average = list.sum / list.length

puts "Average: #{average}"