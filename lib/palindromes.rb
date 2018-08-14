#!/usr/bin/ruby

class Sequence
  def initialize(sequence)
    @sequence = sequence
  end

  def is_palindrome?
    reversed_string = []
    @sequence.each_char do |char|
      reversed_string.unshift(char)
    end
    reversed_string.join('') == @sequence
  end
end
