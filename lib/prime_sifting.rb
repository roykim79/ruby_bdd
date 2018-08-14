#!/usr/bin/ruby

class Number
  def initialize(number)
    @number = number
  end

  def prime_sifting
    numbers = (2..@number)
    primes = *(2..@number)
    numbers.each do |prime|
      multiplier = 2
      while (prime * multiplier) <= @number
        primes.delete(prime * multiplier)
        multiplier += 1
      end
    end
    primes
  end
end
