require('minitest/autorun')
require('minitest/reporters')

require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("rob")
  end

  def test_fish_name
    assert_equal("rob", @fish1.name)
  end

end
