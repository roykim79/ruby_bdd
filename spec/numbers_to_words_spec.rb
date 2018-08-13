require 'rspec'
require 'numbers_to_words'

describe 'Number#numbers_to_words' do
  it 'returns a single digit number in word form' do
    number = Number.new(1)
    expect(number.numbers_to_words()).to eq("one")
  end

  it 'returns a number between 10 and 20 in word form' do
    number = Number.new(11)
    expect(number.numbers_to_words()).to eq("eleven")
  end

  it 'returns a number between 19 and 100 in word form' do
    number = Number.new(21)
    expect(number.numbers_to_words()).to eq("twenty one")
  end

  it 'returns "zero" if the input is 0' do
    number = Number.new(0)
    expect(number.numbers_to_words()).to eq("zero")
  end
end
