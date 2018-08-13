require 'rspec'
require 'cat_class'

describe Cat do
  describe '#name' do
    it "returns a cat's" do
      cat = Cat.new('Milo', 15)
      expect(cat.name()).to eq('Milo')
    end
  end

  describe '#name=' do
    it "changes a cat's name" do
      cat = Cat.new('Milo', 15)
      cat.name = 'Kiki'
      expect(cat.name()).to eq('Kiki')
    end
  end

  describe '#age=' do
    it "changes a cat's age" do
      cat = Cat.new('Milo', 15)
      cat.age = 16
      expect(cat.age()).to eq(16)
    end
  end

  describe '#details' do
    it "returns the cat's details" do
      cat = Cat.new('Milo', 15)
      expect(cat.details()).to eq('Name: Milo, Age: 15')
    end
  end

  describe '#color=' do
    it "changes the cat's color" do
      cat = Cat.new('Milo', 15)
      cat.color = 'white'
      expect(cat.color()).to eq('white')
    end
  end
end
