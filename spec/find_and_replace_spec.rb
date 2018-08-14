require 'rspec'
require 'find_and_replace'

describe 'find_and_replace' do
  it 'replaces string1 with string2 from the given text' do
    text = Text.new('Hello')
    expect(text.find_and_replace('Hello', 'World')).to eq('World')
  end

  it 'replaces all matches of the first string with the second string' do
    text = Text.new('I am walking my cat to the cathedral.')
    expect(text.find_and_replace('cat', 'dog')).to eq('I am walking my dog to the doghedral.')
  end
end
