require 'test_helper'

class Faker::Buront::BlankLineTest < Minitest::Test
  def test_body_array_has_no_blank_lines
    Faker::Buront.keys.each do |key|
      blank_lines = Faker::Buront.whole_saying(key).body_array.select { |line| line.strip.empty? }
      assert_empty(blank_lines, "#{key} has blank lines in body_array")
    end
  end

  def test_body_array_skips_blank_line_in_sadness
    refute_includes(Faker::Buront.whole_saying(:sadness).body_array, '')
  end

  def test_oneline_is_not_affected
    saying = Faker::Buront.whole_saying(:sadness)
    assert_equal(saying.body.delete("\n"), saying.oneline)
  end
end
