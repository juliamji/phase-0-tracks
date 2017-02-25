#pseudocode
#prompt using puts for all of the required info
#convert input to integer/string form using gets.to_i, etc. 
#put colors, themes, etc. into arrays? 
#set up hash with client data, the client's name, age, number of children, decor theme, and so on
#print hash to screen
#update the hash? but with what? 
#print updated hash using p. __ <- hash name 

#notes: i didn't have time to completely figure out how to update a key with the strings into symbols method so i just have a loop going that asks the user for all of their favorite decor themes and colors and asks them to type done or none.

preferred_themes = [] 
fave_colors = []
ugly_colors = []

client_profile = {}


puts "Your full name?"
full_name = gets.chomp
client_profile[full_name] = "#{full_name}" 


puts "Age?"
age = gets.to_i
client_profile[age] = "#{age}"


puts "Number of Children?"
child = gets.to_i
client_profile[child] = "#{child}"



loop do 
	puts "Preferred Decor Themes? Type 'none', if unknown. Type 'done', when done" 
	decor_theme = gets.chomp
	break if decor_theme == "none" || decor_theme == "done"
	preferred_themes << decor_theme
	client_profile[decor_theme] = preferred_themes
end 

loop do 
	puts "Favorite Colors? Type 'none', if none. Type 'done', when done" 	
	color = gets.chomp
	break if color == "none" || color == "done"
	fave_colors << color 
	client_profile[color] = fave_colors
end 

loop do
	puts "Hated Colors? Type 'none', if none. Type 'done', when done"	
	hate_color = gets.chomp
	break if hate_color == "none" || hate_color == "done"
	ugly_colors << hate_color
	client_profile[hate_color] = ugly_colors
end 

client_profile = {
	full_name: "#{full_name}", 
	age: "#{age}", 
	child: "#{child}", 
	decor_theme: preferred_themes, 
	color: fave_colors, 
	hate_color: ugly_colors

}

p client_profile