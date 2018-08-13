class Cat
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def color
    @color
  end

  def details
    "Name: #{@name}, Age: #{@age}"
  end

  def name=(name)
    @name = name
  end

  def color=(color)
    @color = color
  end

  def age=(age)
    @age = age
  end
end
