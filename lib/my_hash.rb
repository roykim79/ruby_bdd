class MyHash
  def initialize
    @attributes = {}
  end

  def myFetch(key)
    @attributes["#{key}"]
  end

  def myStore(key, value)
    @attributes["#{key}"] = value
  end

  def has_key?(key)
    @attributes["#{key}"] != nil
  end

  def has_value?(value)
    @attributes.each do |key, val|
      if value == val
        return true
      end
    end
    false
  end
end
