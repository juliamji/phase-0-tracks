class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender, :celebrate_birthday, :get_mad_at

	def initialize(gender, ethnicity)
		# puts "initializing santa instance"
		@gender = gender 
		@ethnicity = ethnicity
	end 

	def reindeer_ranking
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end 
	
	def age 
		age = 0
	end 	

	def celebrate_birthday
		age += 1
	end	

	def get_mad_at
		@reindeer_ranking = reindeer_ranking
	end 	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end 		
end 

#driver code
# santa = Santa.new ("agender", "Japanese")
# santa.speak
# santa.eat_milk_and_cookies("shortbread")
# santa.celebrate_birthday
# santa.get_mad_at
# santa.reindeer_ranking
# santa.gender = "male"
# santa.age
# santa.ethnicity

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese", "Korean", "Chinese", "Arab" "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
ages = [20, 35, 42, 56, 68, 71, 89, 94, 111, 128]

50.times do 
	santa = Santa.new (genders.sample, ethnicities.sample, ages.sample)
	santas << santa
end 

santas[3]
santas[43]
santas[32]