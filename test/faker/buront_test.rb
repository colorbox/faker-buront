require 'test_helper'

class Faker::BurontTest < Minitest::Test
  def test_saying_returns_string
    Faker::Buront.keys.each do |key|
      assert_kind_of(String, Faker::Buront.saying_title(key))
      assert_kind_of(String, Faker::Buront.saying(key))
      assert_kind_of(String, Faker::Buront.random_saying_title)
      assert_kind_of(String, Faker::Buront.random_saying)
      assert_kind_of(String, Faker::Buront.random_part_of_saying)
    end
  end

  def test_saying_returns_saying
    Faker::Buront.keys.each do |key|
      saying = Faker::Buront.whole_saying(key)
      assert_kind_of(Faker::Buront::Saying, saying)
    end
  end

  def test_with_ls_reliability
    expect_title = 'ナイトと忍者のＬＳ信頼度は違いすぎた'
    assert_equal(expect_title, Faker::Buront.saying_title(:ls_reliability))

    expect_body_first_oneline = 'やはり忍者よりナイトの方が頼りにされていた'
    actual_body_first_line = Faker::Buront.whole_saying(:ls_reliability).body_array.first
    assert_equal(expect_body_first_oneline, actual_body_first_line)
  end

  def test_with_fooly_silly
    expected_oneline = 'またageてやがるメール欄に何か入れてればageを見破れないとでも思った浅はかさは愚かしい'
    actual_oneline = Faker::Buront.whole_saying(:siily_fooly).oneline

    assert_equal(expected_oneline, actual_oneline)
  end
end
