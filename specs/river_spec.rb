require('minitest/autorun')
require('minitest/reporters')

require_relative('../fish')
require_relative('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRiver < MiniTest::Test

  def setup
    @river1 = River.new("Amazon")
    @fish_list = Array.new
    list_of_names = %w[rob nemo tim frank steve jimmy]
    list_of_names.each { |name| @fish_list << Fish.new(name)}
  end

  def test_river_has_name
    assert_equal("Amazon", @river1.name)
  end

  def test_river_has_fish__empty
    @fish_list = []
    assert_equal(0, @river1.current_fish_list(@fish_list).length)
  end

  def test_river_has_fish__not_empty
    assert_equal(6, @river1.current_fish_list(@fish_list).length)
  end

  def test_river_fish_count
    assert_equal(0, @river1.fish_count)
  end

end
