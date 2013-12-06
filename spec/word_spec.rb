require 'rspec'
require_relative '../PigLatinTranslation'
require_relative '../Word.rb'

describe Word do
  it 'Array contains Word objects' do
    expect(Word.new('word').starts_with_vowel?).to eql (false)
  end

  it 'Array contains Word objects' do
    expect(Word.new('apply').starts_with_vowel?).to eql (true)
  end

  it 'Should transalate apple to appleway' do
    expect(Word.new('apple').translate_word).to eql ('appleway')
  end

  it 'should translate shapple to appleshay' do
    expect(Word.new('shapple').translate_word).to eql ('appleshay')
  end

  it 'should translate orange to orangeway' do
    expect(Word.new('orange').translate_word).to eql ('orangeway')
  end

  it 'should give error if no vowels are found' do
    expect(Word.new('hckfd').translate_word).to eql ('Error')
  end
end
