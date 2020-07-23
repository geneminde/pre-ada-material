#Poll tracker

tracker = {}

puts "Welcome to my election voting program!"
puts "How many votes do you want to count? "
votes = gets.chomp.to_i
puts "The candidates are Donald Duck, Minnie Mouse and Goofy"
puts "You can also write-in a candidate"
puts "Please enter the name of your preferred candidate to cast a vote \n"

# Collect user votes 
votes.times do |i|
  print "Vote ##{i+1}: "
  vote = gets.chomp.upcase
  if tracker.has_key?(vote.to_sym)
    tracker[vote.to_sym] += 1
  else
    tracker[vote.to_sym] = 1
  end
end

# Report results
puts "\nHere are the election results: "
tracker.each do |key, value|
  if tracker[key] == 1 
    puts "Candidate #{key.to_s} received #{tracker[key]} vote"
  else
    puts "Candidate #{key.to_s} received #{tracker[key]} votes"
  end
end

# Identify highest vote total
most_votes = tracker.values.max
win_total = tracker.select {|key,value| value == most_votes}

# Report winner or tie
if win_total.length == 1
  puts "\n#{win_total.key(most_votes).to_s} is the winner with #{most_votes} votes\n"
else
  puts "\nThe following candidates tie with #{most_votes} votes each: "
  win_total.each do |key, value|
    puts key.to_s 
  end
end

puts "\nThanks for voting!\n"
