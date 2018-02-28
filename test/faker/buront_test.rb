require 'test_helper'

class Faker::BurontTest < Minitest::Test
  def test_saying_returns_string
    Faker::Buront.keys.each do |key|
      saying = Faker::Buront.whole_saying(key)
      assert_kind_of(Faker::Buront::Saying, saying)
      assert_kind_of(String, Faker::Buront.saying_title(key))
      assert_kind_of(String, Faker::Buront.saying(key))
    end
  end

  def test_with_ls_reliability
    expect_title = 'ナイトと忍者のＬＳ信頼度は違いすぎた'
    assert_equal(expect_title, Faker::Buront.saying_title(:ls_reliability))

    expect_body_first_line = 'やはり忍者よりナイトの方が頼りにされていた'
    actual_body_first_line = Faker::Buront.saying(:ls_reliability).split("\n").first
    assert_equal(expect_body_first_line, actual_body_first_line)
  end

  def test_with_fooly_silly
    expected_oneline = 'またageてやがるメール欄に何か入れてればageを見破れないとでも思った浅はかさは愚かしい'
    actual_oneline = Faker::Buront.whole_saying(:siily_fooly).oneline

    assert_equal(expected_oneline, actual_oneline)
  end
end
