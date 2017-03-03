class Santa
	def initialize
		puts "initializing santa instance"
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