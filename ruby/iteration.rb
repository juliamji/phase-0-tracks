def youre_a
	puts "Hey, you're a... "
	yield("Trump", "Bannon")
end 

youre_a {|n1, n2| puts "you're a poopface #{n1} and you're also a poopface #{n2}"}

fave_colors = ["grey", "black", "burgundy", "orange", "green"]
color_rank = {
	"grey" => "1", 
	"black" => "2", 
	"burgundy" => "3", 
	"orange" => "4", 
	"green" => "5"
}

fave_colors.each do |color|
	puts "i like #{color}!"
end 

color_rank.each do |color, rank|
	puts "i like #{color}, it's rank is #{rank}"
end 	