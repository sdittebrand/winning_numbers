require "minitest/autorun"
require_relative "winning_numbers.rb"

class TestWinningNumbers < Minitest::Test

	def test_return_empty_array_when_no_winning_tickets
		our_ticket = "1234"
		winning_tickets = []
		assert_equal([], find_winners(our_ticket, winning_tickets))
	end

	def test_no_matches_returns_empty_array
		our_ticket = "1234"
		winning_tickets = ["6666", "7777", "6655"]
		assert_equal([], find_winners(our_ticket, winning_tickets))
	end

	def test_return_array_for_winner_with_single_match
		our_ticket = "1234"
		winning_tickets = ["1234", "5678", "0123"]
		assert_equal(["1234"], find_winners(our_ticket, winning_tickets))
	end

	def test_multiple_matches_get_returned
		our_ticket = "1234"
		winning_tickets = ["1234", "2345", "8765", "1234"]
		assert_equal(["1234", "1234"], find_winners(our_ticket, winning_tickets))
	end

end
