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

fave_colors.map! do |color|
	puts color
	color.upcase
end 

p fave_colors

nums = [1, 2, 3, 4, 5]
h = {"a" => 100, "b" => 90, "c" => 80}

#array methods 

nums.delete_if {|num| num < 3}
nums.keep_if {|num| num > 1}
nums.select {|num| num < 5}
nums.pop {|num| num > 4}

#hash methods
h.delete_if {|grade, score| grade > "b"}
h.keep_if {|grade, score| grade > "c"}
h.select {|grade, score| grade <= "b"}
#not sure if .shift, .reject, or .delete_if would be the closest to the final method described


