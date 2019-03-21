require("minitest/autorun")
require("minitest/rg")
require_relative('../student.rb')
require_relative('../house.rb')


class TestStudent < MiniTest::Test

  def setup
    options = {
      "id" => 1,
      "first_name" => "Ron",
      "last_name" => "Wesley",
      "house_id" => 1,
      "age" => 12
    }

    # @house1 = House.new({
    #   "id" => 1,
    #   "name" => "Griffindor"
    #   })
    @student1 = Student.new(options)
  end


  def test_full_name()
    assert_equal("Ron Wesley", @student1.full_name)
  end

  def test_first_name()
    assert_equal("Ron", @student1.first_name)
  end

  def test_last_name()
    assert_equal("Wesley", @student1.last_name)
  end

  def test_house_name()
    assert_equal(1, @student1.house_id)
  end

  def test_age()
    assert_equal(12, @student1.age)
  end

end
