# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
 
  attr_reader :population, :population_density, :state
   # initializing the class with 3 arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calling predicted_deaths and speed_of_spread and implementing instance variables
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private
  #calculates possible deaths from population, density, and state
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    factor = case population_density
    when 0...50 then 0.05
    when 50...100 then 0.1
    when 100...150 then 0.2
    when 150...200 then 0.3
    else 0.4 
    end
    number_of_deaths = (population * factor).floor

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end
  #calculating how fast the disease will spread based on population density
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    factor = case population_density
  
  when 0...50 then speed += 2.5
  when 50...100 then speed += 2.0
  when 100...150 then speed += 1.5
  when 150...200 then speed += 1.0
  else speed += 0.5
  end 
    puts " and will spread across the state in #{speed} months.\n\n"

  end

    STATE_DATA.each do |state, pop_data|
    my_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    my_state.virus_effects 
   
  end 

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, pop_data|
    my_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    my_state.virus_effects 
   
  end 
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file? They are nested hashes. One is the outside and the other is the inner. 
# What does require_relative do? How is it different from require? require relative requires a related file. require is more general and you can require different unrelated files.
# What are some ways to iterate through a hash? .each, map, for, while, do 
# When refactoring virus_effects, what stood out to you about the variables, if anything? How much redundancy there was before we refactored it and how many times you don't need to declare and have methods taking in all of the different instance variables.
# What concept did you most solidify in this challenge? Refactoring the methods and re-setting up the driver code methods. 