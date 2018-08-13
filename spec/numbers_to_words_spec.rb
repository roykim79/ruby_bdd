require 'rspec'
require 'numbers_to_words'

describe 'Number#get_number' do
  it 'returns the value of the number' do
    number = Number.new(21)
    expect(number.get_number).to eq(21)
  end
end

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
    number = Number.new(31)
    expect(number.numbers_to_words()).to eq("thirty one")
  end

  it 'returns "zero" if the input is 0' do
    number = Number.new(0)
    expect(number.numbers_to_words()).to eq("zero")
  end

  it 'returns numbers >= 100 in word form' do
    number = Number.new(231)
    expect(number.numbers_to_words()).to eq("two hundred thirty one")
  end

  it 'returns numbers >= 1000 in word form' do
    number = Number.new(4231)
    expect(number.numbers_to_words()).to eq("four thousand two hundred thirty one")
  end

  it 'returns numbers >= 10000 in word form' do
    number = Number.new(14231)
    expect(number.numbers_to_words()).to eq("fourteen thousand two hundred thirty one")
  end

  it 'returns numbers >= 100000 in word form' do
    number = Number.new(214231)
    expect(number.numbers_to_words()).to eq("two hundred fourteen thousand two hundred thirty one")
  end

  it 'returns numbers >= 1000000 in word form' do
    number = Number.new(2214231)
    expect(number.numbers_to_words()).to eq("two million two hundred fourteen thousand two hundred thirty one")
  end

  it 'returns numbers >= 1000000 in word form' do
    number = Number.new(21002214231)
    expect(number.numbers_to_words()).to eq("twenty one billion two million two hundred fourteen thousand two hundred thirty one")
  end

  it 'returns numbers >= 1000000000 in word form' do
    number = Number.new(1021002214231)
    expect(number.numbers_to_words()).to eq("one trillion twenty one billion two million two hundred fourteen thousand two hundred thirty one")
  end
end
