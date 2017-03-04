# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string of items and save it in a new array list
  # set default quantity(key, value) => create hash
  # print the list to the console [can you use one of your other methods here?]
# output: [hash list]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
	#give an input to add to the list
	#save the key & value to the hash
# output: hash with newly added items nad quantity

# Method to remove an item from the list
# input: item name
# steps: delete the input from the list
# output: list without the removed item

# Method to update the quantity of an item
# input: item, updated quantity
# steps: reassign a new quantity to an item
# output: list with updated quantity of items

# Method to print a list and make it look pretty
# input: puts statement for the grocery list, grocery list
# steps: print the hash
# output: grocery list

def grocery_list(grocery)
	groceries = grocery.split(" ")
	grocery_hash = { }
	groceries.each do |item| 
		grocery_hash[item] = 0
	end
	return grocery_hash
end

def add_items(list, item, quantity)
	list[item] = quantity
	print list
end

def remove(list, item)
	list.delete(item)
	print list
end

def update(list, item, new_quantity)
	list[item] = new_quantity
	print list
end

def print_list(list)
 	list.each do |item, quantity| 
 		puts "#{item}, #{quantity}"
	end
end

#Driver Code
list = grocery_list("carrots apples cereal pizza")
puts print_list(list)
puts add_items(list, "ice-cream", 1 )
puts remove(list, "carrots")
puts update(list, "apples", 2)


#Refelct
# What did you learn about pseudocode from working on this challenge? It helps us keep organized and on track with all of our ruby methods. 
# What are the tradeoffs of using arrays and hashes for this challenge? Hashes were better to help us keep organized with all of our different items and quantities. They are more difficult to manipulate but I think the functionality fits this challenge better. 
# What does a method return? The same code processes that need to be repeated? I'm not sure I understand what this question is asking though. 
# What kind of things can you pass into methods as arguments? Any object. 
# How can you pass information between methods? We stored the results of a method in a new variable and then passed that variable as a parameter in a new method. 
# What concepts were solidified in this challenge, and what concepts are still confusing? The above ones with passing our new variable as a parameter in new methods.