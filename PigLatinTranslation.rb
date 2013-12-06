class PigLatinTranslation
  attr_reader :translated_words, :untranslated_words
  def initialize(phrase)
    @phrase = phrase
    @translated_words = []
    @untranslated_words = []
  end

  def split_array
    @untranslated_words << @phrase.split(' ')
  end

  def create_word_objects
    @untranslated_words[0].each do |word|
    word = Word.new(word)
    @translated_words << word.translate_word
    end
    @translated_words = @translated_words.join(' ')
  end
end
