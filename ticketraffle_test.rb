require "minitest/autorun"
require_relative "ticketraffle.rb"
class TestTicketRaffle < Minitest::Test

	def test_assert_that_1_is_1
		assert_equal(1, 1)
	end

	def test_assert_that_there_is_an_array_for_winning_numbers
		winners = [1234, 3456, 5678]
		my_ticket = 1234
		assert_equal(Array, winning_nums(winners, my_ticket))
	end

	def test_assert_that_my_ticket_is_4_digits
		winners = [1234, 3456, 5678]
		my_ticket = 1234
		assert_equal(4, my_ticket_length(winners, my_ticket))
	end

	def test_assert_that_my_ticket_is_in_winners_array
		winners = [1234, 3456, 5678]
		my_ticket = 1234
		assert_equal(true, ticket_search(winners, my_ticket))
	end

	def test_assert_that_ticket_is_a_loser
		winners = [1234, 3456, 5678]
		my_ticket = 2222
		assert_equal(false, ticket_search(winners, my_ticket))
	end

	def test_assert_that_ticket_is_a_loser2
		winners = [1234, 3456, 5678]
		my_ticket = 7777
		assert_equal("LOSER", so_close(winners, my_ticket))
	end

	def test_assert_that_ticket_is_close
		winners = [1234, 3456, 5678]
		my_ticket = 1233
		assert_equal("So close!", so_close(winners, my_ticket))
	end

	def test_assert_that_ticket_is_a_winner
		winners = [3455, 3456, 5678]
		my_ticket = 3456
		assert_equal("Winner!", so_close(winners, my_ticket))
	end
end