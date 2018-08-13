class String
  def leetspeak
    split_string = split('')
    new_array = []
    split_string.each_with_index do |char, index|
      if char.eql?('e')
        new_array.push('3')
      elsif char.eql?('o')
        new_array.push('0')
      elsif char.eql?('I')
        new_array.push('1')
      elsif (char == 's') & (split_string[index - 1] != ' ') & (index != 0)
        new_array.push('z')
      else
        new_array.push(char)
      end
    end
    new_array.join('')
  end
end
