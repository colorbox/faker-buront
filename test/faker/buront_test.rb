require 'test_helper'

class Faker::BurontTest < Minitest::Test
  def test_saying_returns_string
    Faker::Buront.keys.each do |key|
      saying = Faker::Buront.saying(key)
      assert_kind_of(Faker::Buront::Saying, saying)
      assert_kind_of(String, Faker::Buront.saying_title(key))
      assert_kind_of(String, Faker::Buront.saying_body(key))
    end
  end

  def test_with_ls_reliability
    expect_title = 'ナイトと忍者のＬＳ信頼度は違いすぎた'
    assert_equal(expect_title, Faker::Buront.saying_title(:ls_reliability))

    expect_body_first_line = 'やはり忍者よりナイトの方が頼りにされていた'
    actual_body_first_line = Faker::Buront.saying_body(:ls_reliability).split("\n").first
    assert_equal(expect_body_first_line, actual_body_first_line)
  end
end
