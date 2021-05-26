require 'minitest/autorun'
require 'minitest/pride'
require './vowel_munger_challenge'

class VowelMungerTest < Minitest::Test
  def test_it_exists
    replacement = VowelMunger.new

    assert_instance_of VowelMunger, replacement
  end

  def test_it_replaces_vowels_with_position_number
    replacement = VowelMunger.new

    expected = 'th3s 6s 9 str14ng'

    assert_equal expected, replacement.vowel_munger('this is a string')
  end

  def test_it_can_replace_vowels_within_long_sentence
    replacement = VowelMunger.new

    expected = 'Ch3c5l7t9 11s v15ry v20ry t25sty.'

    assert_equal expected, replacement.vowel_munger('Chocolate is very very tasty.')
  end

  def test_it_can_account_for_punctuation_and_spaces
    replacement = VowelMunger.new

    expected = 'P2nct67t910n! D1516s.. n22t? c2728nt[].'

    assert_equal expected, replacement.vowel_munger('Punctuation! Does.. not? count[].')
  end

  def test_it_can_account_for_uppercase_letters
    replacement = VowelMunger.new

    expected = 'CH34S6!'

    assert_equal expected, replacement.vowel_munger('CHEESE!')
  end
end
