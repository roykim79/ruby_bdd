class Fixnum
  def pingpong
    array = []
    number = 1
    self.times() do
      if (number.%(3).eql?(0)) & (number.%(5).eql?(0))
        array.push('pingpong')
      elsif number.%(3).eql?(0)
        array.push('ping')
      elsif number.%(5).eql?(0)
        array.push('pong')
      else
        array.push(number)
      end
      number += 1
    end
    array
  end
end
