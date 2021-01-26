class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def vowel?(letter)
    letter.match? /[aeoui]/
  end

  # def consonant?
  #   letter = self.text
  #   letter.match /[bcdfghjklmnpqrstvwxyz]/
  # end

  def input_string(string)
    s1 = string.split(" ")
    s2 = s1.map { |word| pig_latin(word)}
    s2.join(" ")
  end


  def piglatinize(phrase)
    
    first_letter = phrase[0]
    if vowel?(first_letter)
      "#{phrase}way"
    else
      consonants = []
      consonants << first_letter
      if !vowel?(phrase[1])
        consonants << phrase[1]
        if !vowel?(phrase[2])
          consonants << phrase[2]
          if !vowel?(phrase[3])
            consonants << phrase[3]
          end
        end
      end
      "#{phrase[consonants.length..-1] + consonants.join + "ay"}"
    end

  end

end
