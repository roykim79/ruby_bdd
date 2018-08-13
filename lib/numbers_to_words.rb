class Number
  def initialize(number)
    @number = number
  end

  def numbers_to_words
    number_word_values = {
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
    while (@number > 999999999999)
      trillions_count = (@number/1000000000000)
      trillions_string = Number.new(trillions_count).numbers_to_words()
      number_string.concat(trillions_string + ' trillion')
      @number -= (trillions_count * 1000000000000)
      if @number > 0
        number_string.concat(' ')
      end
    end
    while (@number > 999999999)
      billions_count = (@number/1000000000)
      billions_string = Number.new(billions_count).numbers_to_words()
      number_string.concat(billions_string + ' billion')
      @number -= (billions_count * 1000000000)
      if @number > 0
        number_string.concat(' ')
      end
    end
    while (@number > 999999)
      millions_count = (@number/1000000)
      millions_string = Number.new(millions_count).numbers_to_words()
      number_string.concat(millions_string + ' million')
      @number -= (millions_count * 1000000)
      if @number > 0
        number_string.concat(' ')
      end
    end
    while (@number > 999)
      thousands_count = (@number/1000)
      thousands_string = Number.new(thousands_count).numbers_to_words()
      number_string.concat(thousands_string + ' thousand')
      @number -= (thousands_count * 1000)
      if @number > 0
        number_string.concat(' ')
      end
    end
    while (@number > 99)
      hundreds_count = (@number/100)
      hundreds_string = Number.new(hundreds_count).numbers_to_words()
      number_string.concat(hundreds_string + ' hundred')
      @number -= (hundreds_count * 100)
      if @number > 0
        number_string.concat(' ')
      end
    end
    while (@number > 0)
      number_word_values.each do |number, word|
        if @number >= number
          number_string.concat(word)
          @number -= number
          if @number > 0
            number_string.concat(' ')
          end
        end
      end
    end
    number_string
  end
end
