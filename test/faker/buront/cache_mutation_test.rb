require 'test_helper'

class Faker::Buront::CacheMutationTest < Minitest::Test
  def test_mutating_title_does_not_change_later_results
    expected = Faker::Buront.saying_title(:retainer).dup
    Faker::Buront.saying_title(:retainer) << '!!'

    assert_equal(expected, Faker::Buront.saying_title(:retainer))
  end

  def test_mutating_whole_saying_does_not_change_later_results
    expected_title = Faker::Buront.whole_saying(:back_world).title.dup
    expected_body = Faker::Buront.whole_saying(:back_world).body.dup

    saying = Faker::Buront.whole_saying(:back_world)
    saying.title << '!!'
    saying.body << '!!'

    assert_equal(expected_title, Faker::Buront.whole_saying(:back_world).title)
    assert_equal(expected_body, Faker::Buront.whole_saying(:back_world).body)
  end
end
