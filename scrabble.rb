class Scrabble
  @@letters = {A: 1, B: 3, C: 3, D: 2, E: 1, F: 4, G: 2, H: 4, I: 1,
              J: 8, K: 5, L: 1, M: 3, N: 1, O: 1, P: 3, Q: 10, R: 1,
              S: 1, T: 1, U: 1, V: 4, W: 4, X: 8, Y: 4, Z: 10 }


  # returns the total score value for the given word (case insensitive)
  def self.score(word)
    sum = 0
    word.upcase.chars.map { |letter| sum = @@letters[letter.to_sym] + sum }
    if word.length >= 7
      sum = sum + 10
    end
    sum
    # orignial code before refactoring
    #hash_of_word = word.upcase.chars.map { |letter| letter = letter.to_sym }
    #values = hash_of_word.map { |key| @@letters[key] }
    #sum = 0
    #values.each { |num| sum = num + sum }
    #sum
  end
  #returns the word in the array with the highest score.
  #def self.highest_score_from(array_of_words)
  #array_of_words.max_by { |word| self.score(word) }
  #end

  #returns the word in the array with the highest score.
  def self.highest_score(array_of_words)
    array_of_words.sort_by { |word| [score(word), 100 - word.length, (array_of_words.index(word)) ] }

  end
end


# Note that it’s better to use fewer tiles, so if the top score is tied between multiple words, pick the one with the fewest letters.
# But there is a bonus for using all seven letters. If one of the highest scores uses all seven letters, pick that one
# But if the there are multiple words that are the same score and same length, pick the first one in supplied list
