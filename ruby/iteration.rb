def youre_a
	puts "Hey, you're a... "
	yield ("Trump", "Bannon")
end 

youre_a {|n1, n2| puts "you're a poopface #{n1} and you're also a poopface #{n2}"}	