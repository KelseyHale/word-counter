require_relative 'run'
require 'pry'
RSpec.describe '#wordcount' do
  context 'counts the words in a phrase' do
    it 'returns the word with word count' do
      expect(wordcount("Hey there")).to eq [['hey', 1], ['there', 1]]
    end
  end
  context 'there are capitalized words' do
    it 'counts identically spelled words even if some are capitalized' do
      expect(wordcount("Hello hello")).to eq [['hello', 2]]
    end
  end
  context 'there is punctuation' do
    it 'does not count words with punctuation differently' do
      expect(wordcount("Hello hello.")).to eq [['hello', 2]]
    end
  end
end
