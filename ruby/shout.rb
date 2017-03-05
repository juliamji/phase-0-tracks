module Shout
  # we'll put some methods here soon, but this code is fine for now!

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	"haha" + words + "~~~" + " :)"
  end

end

Shout.yell_angrily("i'm so angry")
Shout.yell_happily("i'm so angry")