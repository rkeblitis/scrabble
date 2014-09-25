# Use TDD to create classes that would be used to build a scrabble game
# (don't actually build a interactive game (yet))

# Write a test
# Watch it fail
# Make it pass
# Simplify
# Repeat

require './scrabble.rb'


describe Scrabble do

  describe "#self.score('hello')" do
    it "returns total score of the word" do
      expect(Scrabble.score("hello")).to eq 8
    end
  end

  describe "self.highest_score_from(array_of_words)" do
    it "returns word with the highest score" do
      expect(Scrabble.highest_score_from(["hello", "hola", "salut"])).to eq "hello"
    end
  end

end
