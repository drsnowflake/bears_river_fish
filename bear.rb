class Bear

  attr_reader :name, :type, :stomach_contents

  def initialize(name, type)
    @name = name
    @type = type
    @stomach_contents = []
  end

  def catch_a_fish(fish)
    @stomach_contents << fish
  end

  def roar
    "Sings Bare Necessities"
  end

  def food_count
    @stomach_contents.length
  end

end
