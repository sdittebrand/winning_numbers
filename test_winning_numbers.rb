require "minitest/autorun"
require_relative "grandbash.rb"

class TestGrandBash < Minitest::Test

    def test_for_class
        assert_equal(Array, grandbash.class)
    end
end
