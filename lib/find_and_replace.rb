#!/usr/bin/ruby

class Text
  def initialize(text)
    @text = text
  end

  def find_and_replace(string1, string2)
    split_text = @text.split(string1)
    if split_text.length == 0
      string2
    else
      split_text.join(string2)
    end
  end

end
