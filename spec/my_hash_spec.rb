require 'rspec'
require 'my_hash'

describe MyHash do
  describe '#myFetch' do
    it "retrieves a stored value by its key" do
      test_hash = MyHash.new()
      test_hash.myStore('kitten', 'cute')
      expect(test_hash.myFetch('kitten')).to eq('cute')
    end

    it "retrieves a stored value by its key" do
      test_hash = MyHash.new()
      test_hash.myStore('kitten', 'cute')
      test_hash.myStore('foo', 'bar')
      expect(test_hash.myFetch('foo')).to eq('bar')
    end
  end

  describe '#has_key?' do
    it 'returns true if the given key is present in the hash' do
      test_hash = MyHash.new()
      test_hash.myStore('foo', 'bar')
      expect(test_hash.has_key?('foo')).to eq(true)
    end

    it 'returns false if the given key is present in the hash' do
      test_hash = MyHash.new()
      test_hash.myStore('foo', 'bar')
      expect(test_hash.has_key?('baz')).to eq(false)
    end
  end

  describe '#has_value?' do
    it 'returns true if the value is present in any key' do
      test_hash = MyHash.new()
      test_hash.myStore('foo', 'bar')
      expect(test_hash.has_value?('bar')).to eq(true)
    end

    it 'returns false if the value is present in any key' do
      test_hash = MyHash.new()
      test_hash.myStore('foo', 'bar')
      expect(test_hash.has_value?('baz')).to eq(false)
    end
  end

  describe '#length' do
    it 'returns the number of key-value pairs' do
      test_hash = MyHash.new()
      expect(test_hash.length()).to eq(0)
    end

    it 'returns the number of key-value pairs' do
      test_hash = MyHash.new()
      test_hash.myStore('foo', 'bar')
      expect(test_hash.length()).to eq(1)
    end

    it 'returns the number of key-value pairs' do
      test_hash = MyHash.new()
      test_hash.myStore('foo', 'bar')
      test_hash.myStore('ping', 'pong')
      expect(test_hash.length()).to eq(2)
    end
  end
end
