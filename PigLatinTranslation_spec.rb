require 'rspec'
require_relative 'PigLatinTranslation'
require_relative 'Word.rb'

describe PigLatinTranslation do
  it 'splits a phrase in an array of individual words' do
    expect(PigLatinTranslation.new('test for rspec').split_array).to be_kind_of(Array)
  end

  it 'returns an array of new word Objects' do
    expect(PigLatinTranslation.new('test for respect').create_word_objects).to be_kind_of(Array)
  end

  it 'Array contains Word objects' do
    expect(Word.new('word').starts_with_vowel?).to eql (false)
  end

  it 'Array contains Word objects' do
    expect(Word.new('apply').starts_with_vowel?).to eql (true)
  end

  it 'Should transalate apple to appleway' do
    expect(Word.new('apple').vowel_translate).to eql ('appleway')
  end

  it 'should translate shapple to appleshay' do
    expect(Word.new('shapple').consonant_translate).to eql ('appleshay')
  end

  it 'should translate orange to orangeway' do
    expect(Word.new('orange').translate_word).to eql ('orangeway')
  end

  it 'should translate table to abletay' do
    expect(Word.new('table').translate_word).to eql ('abletay')
  end
end
 # describe TemperatureConversion do
 #    it 'converts between fahrenheit and celsius' do
 #      expect(TemperatureConversion.new(0).convert).to eql(32)
 #    end
 #  end
