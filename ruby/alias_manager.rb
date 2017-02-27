#set up method for reordering the name
#use first name and last name in order to reverse the order 
#make new variable and concat the name in reverse order

#set up method for changing vowels & consonants
	#set up my vowels in a string or array that i can look through? 
	#map and .next 
	
	
	
	#puts "the number of vowels in your name is: " full_name.count ("aeiou")
	

	
	#puts "the number of consonants in your name is: " full_name.count ("bcdfghjklmqprstvwxyz")
		
	
def fake_name (first_name, last_name)
	new_arr = []
	reverse = "last_name" + "first_name"

	vowel = ["a", "e", "i", "o", "u"]
	new_vowels = "#{full_name}".split ("")
	p new_vowels

	p new_vowels.map! { |vowel| vowel.next }

	name2 = new_vowels.join ("")

	p "your coded name is: #{name2}" 
	
end 

#user interface

loop do
	puts "enter first name & hit enter. then enter last name & hit enter. to exit, type 'quit'"
	first_name = gets.chomp
	last_name = gets.chomp
	
	break if first_name == "quit" || last_name == "quit"

	full_name = first_name.prepend ("#{last_name} ")

	p full_name
end	