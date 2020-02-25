class Bear

  attr_reader :name, :stomach_contents

  def initialize(name)
    @name = name
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
