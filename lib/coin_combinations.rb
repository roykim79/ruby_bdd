#!/usr/bin/ruby

class Change
  def initialize(change)
    @change = change
  end

  def coin_combinations
    coin_values = {
      25 => 'quarters',
      10 => 'dimes',
      5 => 'nickels',
      1 => 'pennies'
    }
    coins = {}
    coin_values.each do |value, name|
      coin_count = 0
      while @change >= value
        @change -= value
        coin_count += 1
      end
      if coin_count > 0
        coins[name] = coin_count
      end
    end
    coins
  end
end
