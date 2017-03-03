class Santa
	def initialize(gender, ethnicity)
		# puts "initializing santa instance"
		@gender = gender 
		@ethnicity = ethnicity
	end 

	def reindeer_ranking
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end 
	
	def age 
		age = 0
	end 		

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end 		
end 

santa1 = Santa.new
santa1.eat_milk_and_cookies("shortbread")