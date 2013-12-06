
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

  def first_vowel_index
    letters = []
    letters << @word.split('')
    index = letters[0].index{|letter| VOWELS.include?(letter) == true}
    if index == nil
      index = @word.index'y'
      if !@word.index'y'
        return nil
      end
    end
    index
  end

  def consonant_translate

    if first_vowel_index == nil
      return 'Error'
    else
      @word[first_vowel_index..-1] + @word[0...first_vowel_index] + 'ay'
    end
  end

  def translate_word
    if starts_with_vowel?
      vowel_translate
    else
      consonant_translate
    end
  end
end
