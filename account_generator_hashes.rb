#I'm working with the same assumptions re how names are structured as in 
#the previous exercise

student_info = []
puts "Welcome to the refactored account generator"
puts "Please enter five student names (FirstName LastName, please!)"

5.times do |i|
  print "Enter name ##{i+1}: "
  name = gets.chomp.upcase
  id = rand(111111..999999)

  #check for duplicate id
  student_info.each do |i|
    while i.has_key?(id)
      id = rand(111111..999999) 
    end
  end
  
  #check for two initial first name
  if name.split.length > 2
    email = "@adadevelopersacademy.org".prepend(
      name.split[0][0],
      name.split[1][0],
      name.split[2],
      id.to_s[3..5]
    )
  else
    email = "@adadevelopersacademy.org".prepend(
      name.split[0][0],
      name.split[1],
      id.to_s[3..5]
    )
  end
  
  student_info << {
    name: name,
    id: id,
    email: email, 
  }
end

puts "\nCurrent roster:"
student_info.each { |i| 
  puts "Name: #{i[:name]}  ID: #{i[:id]}  Email: #{i[:email]}"
}

