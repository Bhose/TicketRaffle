def winning_nums(winners, my_ticket)
	winners.class
end

def my_ticket_length(winners, my_ticket)
	my_ticket.to_s.length 
end

#ticket is in winner array
def ticket_search(winners, my_ticket)
	if winners.include?(my_ticket) ==  true
		true
	else
		false
	end
end

def so_close(close_tickets, my_ticket)
	if close_tickets.include?(my_ticket) == true
		puts "So Close"
	else
		puts "Sorry, you lose"
	end
	# if winners.each(my_ticket) == true
	# 	puts "So Close!"
	# else
	# 	puts "Sorry, you lose."
	# end
end


