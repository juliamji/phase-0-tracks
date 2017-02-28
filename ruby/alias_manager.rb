#set up method for reordering the name
#use first name and last name in order to reverse the order 
#make new variable and concat the name in reverse order
#now i want to iterate over the reversed name
#use chars, map, and next 
#i should have vowels and consonants also set up in array/hash
#.downcase can be used to ensure the name is properly handled 

#notes: i've included a method that i tried to pseudocode out and an alternative algorithm because i'm a bit stuck 		
	
# def fake_name (first_name, last_name)
# 	new_arr = []
# 	reverse = "#{last_name}" + " " + "#{first_name}"
# 	p reverse

# 	#now i want to iterate over the reversed name

# 	vowel= ["a", "e", "i", "o", "u"]
# 	consonant = []

# 	new_name = reverse.chars.map{ |vowel| vowel.next }

	

# 	p new_name
	
# end 

def fake_name(first_name, last_name)
	name_arr = []
	reversed_name = "#{last_name}" + " " + "#{first_name}"
 	# p reversed_name

	new_name = reversed_name.reverse
	# p new_name

	name_arr << new_name

	puts "your code name is: #{new_name}"

	p name_arr

end 	

fake_name("felicia", "torres")

#user interface

# loop do
# 	puts "enter first name & hit enter. then enter last name & hit enter. to exit, type 'quit'"
# 	first_name = gets.chomp
# 	last_name = gets.chomp
	
# 	break if first_name == "quit" || last_name == "quit"

# 	full_name = first_name.prepend ("#{last_name} ")

# 	p full_name
