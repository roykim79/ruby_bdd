require 'rspec'
require 'allergies'

describe 'Score#allergies' do
  it 'returns a list of allergies from a score' do
    score = Score.new(2)
    expect(score.allergies()).to eq(['eggs'])
  end

  it 'returns a list of allergies from a score' do
    score = Score.new(3)
    expect(score.allergies()).to eq(['eggs', 'peanuts'])
  end

  it 'returns a list of allergies from a score' do
    score = Score.new(128)
    expect(score.allergies()).to eq(['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen'])
  end
end
