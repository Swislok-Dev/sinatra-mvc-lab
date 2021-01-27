class PigLatinizer

  # def initialize(text)
  #   @text = text.downcase
  # end

  def vowel?(letter)
    letter.downcase
    letter.match? /[aeoui]/
  end

  def pig_latin(word)
    first_letter = word[0]  
    letters = word.split("")    
    if vowel?(first_letter)
      letters << "way"
    else
      consonants = []
      until vowel?(letters[0])
        letters << letters.shift
      end
      letters << "ay"
    end
    letters.join
  end
  
  def piglatinize(string)
    words = string.split(" ")
    words.map!{ |word| pig_latin(word)}
    words.join(" ")
  end
end

