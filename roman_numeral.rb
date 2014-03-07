require 'minitest/autorun'

def parse(str)
  translation = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
  }

  sum = 0
  last_value = 0

  str.each_char do |c|
       curr = translation[c]
       sum += curr

       if last_value < curr
         sum -= 2 * last_value
       end

       last_value = curr
     end

  sum
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

  def test_iv
    assert_equal 4, parse('iv')
  end

  def test_ix
    assert_equal 9, parse('ix')
  end

end
