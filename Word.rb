class Word
VOWELS = %w(a e i o u)
  def initialize(word)
    @word = word
  end

  def starts_with_vowel?
    VOWELS.include?(@word[0])
  end

  def vowel_translate
    @word + 'way'
  end

  def consonant_translate
    letters = @word.split('')
    end_of_word = ''
    until VOWELS.include?(letters[0])
      end_of_word << letters.shift
    end
    letters.join + end_of_word + 'ay'
  end

  def translate_word
    if starts_with_vowel?
      vowel_translate
    else
      consonant_translate
    end
  end
end
