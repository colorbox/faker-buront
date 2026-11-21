require 'test_helper'

class Faker::Buront::PrivateApiTest < Minitest::Test
  def test_saying_hash_is_private
    refute_respond_to(Faker::Buront, :saying_hash)
    assert_raises(NoMethodError) { Faker::Buront.saying_hash }
  end

  def test_public_api_still_works
    refute_empty(Faker::Buront.keys)
    assert_kind_of(String, Faker::Buront.saying(:rage))
  end
end
