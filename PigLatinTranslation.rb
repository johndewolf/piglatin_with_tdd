class PigLatinTranslation
  def initialize(phrase)
    @phrase = phrase
    @untranslated_words = []
  end

  def split_array
    array = @phrase.split(' ')
  end

  def create_word_objects
    split_array.each do |word|
    @untranslated_words << word
   end
 end
end
