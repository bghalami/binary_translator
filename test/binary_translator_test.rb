require "./lib/binary_translator"
require "minitest/autorun"
require "minitest/pride"

class BinaryTranslatorTest < Minitest::Test

  def test_translate_returns_binary
    bt = BinaryTranslator.new
    assert_equal "011010", bt.translate("z")
    assert_equal "000001", bt.translate("a")
    assert_equal "010100010101010010001001001110000111", bt.translate("TURING")
  end

  def test_that_spaces_return_00000
    bt = BinaryTranslator.new

    assert_equal "001000000101001100001100001111000000010111001111010010001100000100", bt.translate("Hello World!")
    assert_equal "000000", bt.translate(" ")
  end

  def test_characters_return_nothing
    bt = BinaryTranslator.new

    assert_equal "", bt.translate("!@{$#%^&*()}")
  end

end
