require 'rspec'
require 'palindromes'

describe 'Sequence#is_palindrome?' do
  it 'returns false if the sequence is not a palindrome' do
    sequence = Sequence.new("abcdefg")
    expect(sequence.is_palindrome?()).to eq(false)
  end

  it 'returns true if the string is a palindrome' do
    sequence = Sequence.new("abba")
    expect(sequence.is_palindrome?()).to eq(true)
  end

  it 'returns true if the integer is a palindrome' do
    sequence = Sequence.new(1221)
    expect(sequence.is_palindrome?()).to eq(true)
  end
end
