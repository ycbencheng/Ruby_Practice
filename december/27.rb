# Given a string such as:

# "tacocat"
# Check to see if the word is a palindrome. A palindrome is a word that is spelled out the same way if you reverse the letters. Also ensure that the palindrome method is case insensitive.

require 'rspec'

def palindrome? word
  word.downcase == word.reverse.downcase
end



describe 'Check if a word is a palindrome' do
  it 'returns true if the word is a palindrome, false if not' do
    expect(palindrome?('tacocat')).to be(true)
    expect(palindrome?('Tacocat')).to be(true)
    expect(palindrome?('baseball')).to be(false)
  end
end
