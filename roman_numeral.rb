require 'minitest/autorun'

def parse(str)
  translation = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
  }

  translation[str]
end

class RomanNumeral < MiniTest::Unit::TestCase

  def test_i
    assert_equal 1, parse('i')
  end

  def test_v
    assert_equal 5, parse('v')
  end

  def test_x
    assert_equal 10, parse('x')
  end

end
