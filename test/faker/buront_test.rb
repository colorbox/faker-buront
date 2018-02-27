require 'test_helper'

class Faker::BurontTest < Minitest::Test
  def test_saying_returns_string
    Faker::Buront.keys.each do |key|
      saying = Faker::Buront.saying(key)
      assert_kind_of(Hash, saying)
      assert_kind_of(String, saying[:title])
      assert_kind_of(String, saying[:body])
    end
  end
end
