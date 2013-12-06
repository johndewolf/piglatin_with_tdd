require './PigLatinTranslation'
require './Word'
    require "pry"

puts 'Please enter a phrase to be translated'
phrase = gets.chomp

phrase = PigLatinTranslation.new(phrase)
phrase.split_array
phrase.create_word_objects
puts phrase.translated_words
