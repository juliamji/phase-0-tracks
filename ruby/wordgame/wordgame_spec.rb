require_relative 'wordgame'

describe Game do 
	let(:letters){ Game.new(["duck"])}

	it "adds a letter if the player guesses correctly" do
		expect(letters.letter_checker). to eq ["You guessed one correct letter!"]
	end 

end