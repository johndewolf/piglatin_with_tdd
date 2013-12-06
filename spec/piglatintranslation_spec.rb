require 'rspec'
require_relative '../PigLatinTranslation'

describe PigLatinTranslation do
  it 'splits a phrase in an array of individual words' do
    expect(PigLatinTranslation.new('test for rspec').split_array).to be_kind_of(Array)
  end

  # it 'returns an array of new word Objects' do
  #   expect(PigLatinTranslation.new('test for respect').create_word_objects).to be_kind_of(String)
  # end
end
