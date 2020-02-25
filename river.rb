class River

  attr_reader :name, :current_fish

  def initialize(name)
    @name = name
    @current_fish = []
  end

  def current_fish_list(fish_list)
    fish_list.each { |fish| @current_fish << fish }
  end

  def lost_a_fish(fish)
    @current_fish.delete(fish)
  end

  def fish_count
    @current_fish.length
  end

end
