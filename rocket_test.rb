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

  def test_name_returns_false_if_not_string
    @rocket.name=("test")
    refute @rocket.name.is_a?(Integer)
  end

  def test_new_color
    @rocket.colour=("red")
    assert @rocket.colour == "red"
  end

  def test_colour_returns_true_if_string
    @rocket.colour=("Blue")
    assert @rocket.colour.is_a?(String)
  end

  def test_colour_returns_false_if_not_string
    @rocket.colour=("Blue")
    refute @rocket.colour.is_a?(Integer)
  end

  def test_flying_rocket
    @rocket = Rocket.new
    @rocket.flying?
    assert @rocket.flying? == false
  end

  def test_flying_rocket_true
    @rocket = Rocket.new(flying: true)
    @rocket.flying?
    assert @rocket.flying? == true
  end

  def test_that_flying_rocket_returns_true_when_lift_off
    @rocket = Rocket.new
    assert @rocket.lift_off == true
  end

  def test_that_non_flying_rocket_returns_false_when_lift_off
    @rocket = Rocket.new
    refute @rocket.lift_off == false
  end

  def test_landing_true
    @rocket = Rocket.new
    @rocket.flying=(true)
    assert @rocket.land == true
  end

  def test_landing_false
    @rocket.lift_off
    @rocket.land
    refute @rocket.flying?
  end

  def test_rocket_already_landed
    @rocket = Rocket.new
    @rocket.land
    assert @rocket.land == false
  end

  def test_flying_status_true
    @rocket.name=("test")
    @rocket.flying=(true)
    assert @rocket.status == "Rocket #{@rocket.name} is flying through the sky!"
  end

  def test_flying_status_false
    @rocket.name=("test")
    @rocket.flying?
    assert @rocket.status == "Rocket #{@rocket.name} is ready for lift off!"
  end

end
