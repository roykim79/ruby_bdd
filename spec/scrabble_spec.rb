require 'rspec'
require 'scrabble'

describe 'Word#scrabble' do
  it("returns a scrabble score for a letter") do
    word = Word.new("a")
    expect(word.scrabble()).to eq(1)
  end

  it("returns a scrabble score for a word") do
    word = Word.new("boo")
    expect(word.scrabble()).to eq(5)
  end

  it("returns a scrabble score for a word regardless of case") do
    word = Word.new("oXen")
    expect(word.scrabble()).to eq(11)
  end

  it("returns a scrabble score for a word while ignoring numbers") do
    word = Word.new("1o2X4e5n")
    expect(word.scrabble()).to eq(11)
  end
end
