require 'rspec'
require 'find_and_replace'

describe 'find_and_replace' do
  it 'replaces string1 with string2 from the given text' do
    text = Text.new('Hello')
    text1 = Text.new('Hello World')
    expect(text.find_and_replace('Hello', 'World')).to eq('World')
    expect(text1.find_and_replace('World', 'Universe')).to eq('Hello Universe')
    expect(text1.find_and_replace('Hello', 'Goodbye')).to eq('Goodbye World')
  end

  it 'replaces all matches of string1 with string2' do
    text = Text.new('I am walking my cat to the cathedral.')
    expect(text.find_and_replace('cat', 'dog')).to eq('I am walking my dog to the doghedral.')
  end
end
