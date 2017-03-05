# module Shout
#   # we'll put some methods here soon, but this code is fine for now!

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	"haha" + words + "~~~" + " :)"
#   end

# end

# Shout.yell_angrily("i'm so angry")
# Shout.yell_happily("i'm so angry")

module Shout
	def yell_angrily(words)
    puts "#{words}" + "!!!" + " :("
  	end

  	def yell_happily(words)
  	puts "lol " + "#{words}" + "~~~" + " :)"
  	end
end 

class Man
	include Shout
end

class Woman
	include Shout
end 

man = Man.new
man.yell_angrily("i'm so angry")

woman = Woman.new
woman.yell_happily("i'm so angry")