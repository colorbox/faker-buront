require 'test_helper'

class Faker::Buront::SayingTest < Minitest::Test
  def test_title_and_body_are_required
    assert_raises(ArgumentError) { Faker::Buront::Saying.new }
    assert_raises(ArgumentError) { Faker::Buront::Saying.new(title: 't') }
    assert_raises(ArgumentError) { Faker::Buront::Saying.new(body: 'b') }
  end

  def test_new_with_title_and_body
    saying = Faker::Buront::Saying.new(title: 't', body: "a\nb")

    assert_equal('t', saying.title)
    assert_equal("a\nb", saying.body)
    assert_equal(%w[a b], saying.body_array)
    assert_equal('ab', saying.oneline)
  end
end
