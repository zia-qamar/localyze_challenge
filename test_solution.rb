require "minitest/autorun"
require_relative 'localyze_challenge'

class TestSolution < Minitest::Test
  def test_get_max_char
    expected_output = 'uuuuuu'
    assert_equal expected_output, get_max_char('Pressuuuuuure')
    expected_output = 'B'
    assert_equal expected_output, get_max_char('Boat')
    expected_output = '  '
    assert_equal expected_output, get_max_char('A hot  dog')
    assert_equal nil, get_max_char('')
    assert_equal 'z', get_max_char('z')
  end

  def test_last_word_length
    assert_equal 5, last_word_length('Hello World')
    assert_equal 4, last_word_length(' fly me   to   the moon  ')
    assert_equal 6, last_word_length('luffy is still joyboy')
  end
end
