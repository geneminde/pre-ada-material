puts "Welcome to my password program!"
puts "Passwords must contain at least 8 characters, one capital letter, 
  one lower case letter, and one of the following symbols: @ # $ % & !"
print "Please enter your password: "
password = gets.chomp

# The password must contain > 8 chars, at least one symbol, 
# an upper case and lower case character 

pw_test = false

until pw_test
  has_length, has_sym, has_upper, has_lower = false

  # Check for length
  if password.length >= 8
    has_length = true
  end

  # Check for special characters 
  symbols = "@#$%&!"

  password.each_char do |char|
    if symbols.include? char
      has_sym = true
      break
    end
  end

  # Check for upper case 
  upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  password.each_char do |char|
    if upper.include? char
      has_upper = true
      break
    end
  end

  # Check for lower case
  lower = "abcdefghijklmnopqrstuvwxyz"
  password.each_char do |char|
    if lower.include? char
      has_lower = true
      break
    end
  end

  # What a pain - there has to be a better way to do this
  #4c4
  if !has_lower && !has_length && !has_sym && !has_upper
    puts "Your password needs at least 8 characters, one upper case and lower case letter, and one symbol"
    print "Please try again: "
    password = gets.chomp
    #4c3
  elsif !has_lower && !has_sym && !has_upper
    puts "Your password needs at least one upper and lower case letter and one symbol"
    print "Please try again: " 
    password = gets.chomp
  elsif !has_lower && !has_upper && !has_length
    puts "Your password needs at least 8 characters and at least one upper and lower case letter"
    print "Please try again: "
    password = gets.chomp
  elsif !has_lower && !has_length && !has_sym 
    puts "Your password needs at least 8 characters, one lower case letter and one symbol"
    print "Please try again: "
    password = gets.chomp
  elsif !has_sym && !has_upper && !has_length
    puts "Your password needs at least 8 characters, one upper case letter and one symbol"
    print "Please try again: "
    password = gets.chomp
    #4c2
  elsif !has_lower && !has_length
    puts "Your password needs at least 8 characters and one lower case letter"
    print "Please try again: "
    password = gets.chomp
  elsif !has_lower && !has_sym
    puts "Your password needs at least one lower case letter and one symbol"
    print "Please try again: "
    password = gets.chomp
  elsif !has_lower && !has_upper
    puts "Your password needs at least one lower case letter and one upper case letter"
    print "Please try again: "
    password = gets.chomp
  elsif !has_length && !has_sym
    puts "Your password needs at least 8 characters and one symbol"
    print "Please try again: "
    password = gets.chomp
  elsif !has_length && !has_upper
    puts "Your password needs at least 8 characters and one upper case letter"
    print "Please try again: "
    password = gets.chomp
  elsif !has_sym && !has_upper
    puts "Your password needs at least one symbol and one upper case character"
    print "Please try again: "
    password = gets.chomp
    #4c1
  elsif !has_length
    puts "Your password needs at least 8 characters"
    print "Please try again: "
    password = gets.chomp
  elsif !has_lower
    puts "Your password needs at least one lower case letter"
    print "Please try again: "
    password = gets.chomp
  elsif !has_sym
    puts "Your password needs at least one symbol"
    print "Please try again: "
    password = gets.chomp
  elsif !has_upper
    puts "Your password needs at least one upper case letter"
    print "Please try again: "
    password = gets.chomp
  else
    pw_test = true
  end
end
puts "Your password is valid!\n"
puts "Please reenter your password to verify: "
password2 = gets.chomp
 
while password != password2
  puts "Passwords do not match!"
  print "Please reenter your password: "
  password2 = gets.chomp
end

puts "Passwords match!"
puts "Thanks for using my password program!\n"










