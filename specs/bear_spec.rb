require('minitest/autorun')
require('minitest/reporters')

require_relative('../fish')
require_relative('../bear')
require_relative('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Baloo", "Sloth")

    @fish_list = Array.new
    list_of_names = %w[rob nemo tim frank steve jimmy]
    list_of_names.each { |name| @fish_list << Fish.new(name) }

    @river1 = River.new("Amazon")

  end

  def test_bear_has_name
    assert_equal("Baloo", @bear1.name)
  end

  def test_bear_has_type
    assert_equal("Sloth", @bear1.type)
  end

  def test_bear_is_hungry
    assert_equal(0, @bear1.stomach_contents.length)
  end

  def test_bear_takes_fish
    caught_fish = @fish_list.sample
    @river1.current_fish_list(@fish_list)
    @bear1.catch_a_fish(caught_fish)
    @river1.lost_a_fish(caught_fish)
    assert_equal(1, @bear1.stomach_contents.length)
    assert_equal(5, @river1.current_fish.length)
  end

  def test_bear_roar
    assert_equal("Sings Bare Necessities", @bear1.roar)
  end

  def test_bear_food_count
    assert_equal(0, @bear1.food_count)
  end

end
