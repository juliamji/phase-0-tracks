class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	puts "Woof!" * number 
  end 
  def roll_over
  	puts "rolls over"
  end

  def dog_years(age)
  	puts age * 7
  end

  def sit(place)
  	puts "I can sit on the #{place}!"
  end
end


class Zombie 

	def initialize
		puts "Initializing new zombie instance"
	end 

	def hunt(object)
		puts "The zombie is hunting for the #{object}"
	end

	def skin_color(color)
		puts "The zombie's face is #{color}"
	end

end 

zombies = []

 50.times do 
 	zombie = Zombie.new
 	zombies << zombie
 end 

zombies.each do |person|
	person.hunt("chicken") 
	person.skin_color("grey")
end 

mark = Zombie.new

mark.hunt("umbrella")


susan = Puppy.new

susan.fetch("ball")

susan.speak(5)

susan.roll_over 
susan.dog_years(10)
susan.sit("table")

bob = Puppy.new
