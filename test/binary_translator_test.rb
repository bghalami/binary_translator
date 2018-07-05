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

end
