require 'test_helper'

class Faker::Buront::KeyLookupTest < Minitest::Test
  def test_string_key_returns_same_result_as_symbol_key
    assert_equal(Faker::Buront.saying(:rage), Faker::Buront.saying('rage'))
    assert_equal(Faker::Buront.saying_title(:rage), Faker::Buront.saying_title('rage'))
    assert_equal(Faker::Buront.whole_saying(:rage).body, Faker::Buront.whole_saying('rage').body)
    assert_includes(Faker::Buront.whole_saying(:rage).body_array, Faker::Buront.part_of_saying('rage'))
  end

  def test_unknown_key_raises_key_error
    assert_raises(KeyError) { Faker::Buront.saying(:no_such_key) }
    assert_raises(KeyError) { Faker::Buront.saying_title(:no_such_key) }
    assert_raises(KeyError) { Faker::Buront.part_of_saying(:no_such_key) }
    assert_raises(KeyError) { Faker::Buront.whole_saying(:no_such_key) }
    assert_raises(KeyError) { Faker::Buront.saying('no_such_key') }
  end

  def test_non_symbolizable_key_raises_key_error
    assert_raises(KeyError) { Faker::Buront.saying(nil) }
    assert_raises(KeyError) { Faker::Buront.saying(1) }
  end
end
