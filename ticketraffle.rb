def winning_nums(winners, my_ticket)
	winners.class
end

def my_ticket_length(winners, my_ticket)
	my_ticket.to_s.length 
end

def ticket_search(winners, my_ticket)
	if winners.include?(my_ticket) ==  true
		true
	else
		false
	end
end


