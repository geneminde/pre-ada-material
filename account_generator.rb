names = []
ids = []
emails = []

puts "Welcome to my student account generator"
puts "Please enter 5 student names in the following format: FirstName LastName\n"

# collect student names

5.times do |i|
  print "Enter name ##{i + 1}: "
  name = gets.chomp.upcase
  names << name 
end

#Generate ID numbers
5.times do 
  id = rand(111111..999999)
  while ids.include?(id)
    id = rand(111111..999999)
  end
  ids << id
end


#Generate email addresses
5.times do |i|
  split_name = names[i].split
  if split_name.length > 2
    email = "@adadevelopersacademy.org".prepend(split_name[0][0], split_name[1][0], split_name[2], ids[i].to_s[3..5])
  else
    email = "@adadevelopersacademy.org".prepend(split_name[0][0], split_name[1], ids[i].to_s[3..5])
  end
  emails << email
end

#Print student info

puts "The current roster is:"
5.times do |i|
  puts "Name: #{names[i]} ID #: #{ids[i]} Email: #{emails[i]}" 
end

#An obvious issue in this exercise is that there exists a tradition of compound surnames 
#in numerous cultures. The way this exercise is structured requires making certain assumptions
#that erase the distinction between, for example, Helena Bohnam Carter (double barrel surname) 
#and John Maynard Keynes (not double), to say nothing of the numerous surnames one sees in Spanish 
#and Portugese speaking traditions. It seems a little odd to construct an exercise that perpetuates 
#a tortured relationship between Hispanic and/or Latinx Americans' naming traditions and 
#databases everywhere. 

#In light of the ambiguity above, the third optional part of this exercise is oddly specific - 
#intials are subject to greater personal preference and even fewer universally accepted conventions 
#than compound last names.  My strong prior is that two first initials is almost certainly not 
#the universal preference among individuals with compound first names, nor is it likely even the 
#majority position, partcuarly since inital choice frequently interacts with variables opaque 
#to this exercise (middle names). 
      
#Naturally, I get that the pedagogical intent is to get practice with string methods and
#manipulating arrays. Therefore, in the interest of completing the exercise as specified, 
#I am applying the simplifying assumption that there will be no compound last names, only 
#compound first names. Of course, the more obvious solution would be to simply ask the user 
#for first name and last name separately, but this strikes me as being somewhat less in the 
#spirit of the exercise as I would then have no strings to split.