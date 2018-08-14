require 'rspec'
require 'coin_combinations'

describe 'Change#coin_combinations' do
  it 'returns a hash containing the smallest number of coins needed to make the amount' do
    change = Change.new(1)
    expect(change.coin_combinations()).to eq({'pennies'=> 1})
  end

  it 'returns a hash containing the smallest number of coins needed to make the amount' do
    change = Change.new(21)
    expect(change.coin_combinations()).to eq({'dimes' => 2, 'pennies' => 1})
  end

  it 'returns a hash containing the smallest number of coins needed to make the amount' do
    change = Change.new(99)
    expect(change.coin_combinations()).to eq({'quarters' => 3, 'dimes' => 2, 'pennies' => 4})
  end
end
