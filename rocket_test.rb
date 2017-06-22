require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_new_name
    @rocket.name=("test")
    assert @rocket.name == "test"
  end

  def test_new_color
    @rocket.colour=("red")
    assert @rocket.colour == "red"
  end

end
