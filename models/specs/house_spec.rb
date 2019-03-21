require("minitest/autorun")
require("minitest/rg")
require_relative('../house.rb')

class TestHouse < MiniTest::Test

  def setup
    options = {
      "id" => 1,
      "name" => "Griffindor"
    }
    @house1 = House.new(options)
  end

  def test_house_name()
    assert_equal("Griffindor", @house1.name)
  end
end
