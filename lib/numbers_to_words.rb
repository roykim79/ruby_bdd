class Number
  def initialize(number)
    @number = number
  end

  def get_number
    @number
  end

  def numbers_to_words
    number_word_values = {
      1000000000000 => ' trillion',
      1000000000 => ' billion',
      1000000 => ' million',
      1000 => ' thousand',
      100 => ' hundred',
      90 => 'ninety',
      80 => 'eighty',
      70 => 'seventy',
      60 => 'sixty',
      50 => 'fifty',
      40 => 'forty',
      30 => 'thirty',
      20 => 'twenty',
      19 => 'nineteen',
      18 => 'eighteen',
      17 => 'seventeen',
      16 => 'sixteen',
      15 => 'fifteen',
      14 => 'fourteen',
      13 => 'thirteen',
      12 => 'twelve',
      11 => 'eleven',
      10 => 'ten',
      9 => 'nine',
      8 => 'eight',
      7 => 'seven',
      6 => 'six',
      5 => 'five',
      4 => 'four',
      3 => 'three',
      2 => 'two',
      1 => 'one'
    }
    number_string = ''
    if @number == 0
      return 'zero'
    end
    while (@number > 0)
      number_word_values.each do |number, word|
        if @number >= number
          place_count = 1
          if @number >= 100
            place_count = (@number/number).floor
            substring = Number.new(place_count).numbers_to_words()
            number_string.concat(substring + word)
          else
            number_string.concat(word)
          end
          @number -= (place_count * number)
          if @number > 0
            number_string.concat(' ')
          end
        end
      end
    end
    number_string
  end
end
