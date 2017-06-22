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

  def test_name_returns_true_if_string
    @rocket.name=("test")
    assert @rocket.name.is_a?(String)
  end

  def test_new_color
    @rocket.colour=("red")
    assert @rocket.colour == "red"
  end

  def test_colour_returns_true_if_string
    @rocket.colour=("Blue")
    assert @rocket.colour.is_a?(String)
  end

  def test_that_non_flying_returns_false_when_lift_off
    @rocket = Rocket.new
    # assert @rocket.flying? == false
     assert @rocket.lift_off == true
  end
end
