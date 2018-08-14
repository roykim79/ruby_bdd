#!/usr/bin/ruby

class Text
  def initialize(text)
    @text = text
  end

  def find_and_replace(string1, string2)
    @text.gsub(string1, string2)
  end

end
