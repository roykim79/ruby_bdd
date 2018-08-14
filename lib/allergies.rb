#!/usr/bin/ruby

class Score
  def initialize(score)
    @score = score
  end

  def allergies
    scores = {
      'eggs' => 1,
      'peanuts' => 2,
      'shellfish' => 4,
      'strawberries' => 8,
      'tomatoes' => 16,
      'chocolate' => 32,
      'pollen' => 64,
      'cats' => 128
    }
    allergy_list = []
    scores.each do |item, score|
      if score < @score
        allergy_list.push(item)
      else
        break
      end
    end
    allergy_list
  end
end
