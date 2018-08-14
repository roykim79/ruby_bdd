require 'rspec'
require 'prime_sifting'

describe 'Number#prime_sifting' do
  it 'returns a list containing the number 2 when the user inputs 2' do
    number = Number.new(2)
    expect(number.prime_sifting()).to eq([2])
  end

  it 'returns a list containing the numbers 2 and 3 when the user inputs 3' do
    number = Number.new(3)
    expect(number.prime_sifting()).to eq([2, 3])
  end

  it 'returns a list containing the numbers 2, 3, 5, and 7 when the user inputs 10' do
    number = Number.new(10)
    expect(number.prime_sifting()).to eq([2, 3, 5, 7])
  end
end
