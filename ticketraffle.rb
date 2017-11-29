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

  
def so_close(winning_tickets, my_ticket)
	we_were_close = false
	my_ticket_digits = my_ticket.to_s.split("")

	#Loop through all winning tickets
	winning_tickets.each do |winning_ticket|
		#splitting current winning ticket into an array of digits 
		digits = winning_ticket.to_s.split("")
		puts 
		puts
		print digits #from winning ticket
		puts
		print my_ticket_digits #from my ticket
#Prints winning ticket vs my ticket in split array^^^

#compares winning ticket vs my ticket in split array vvv
		matches = 0
		digits.each_with_index do |digit,digitposition|
			if digit == my_ticket_digits[digitposition]
				matches += 1
			end
		end

		puts
		puts matches.to_s + " matches"

		if matches == 4 #we WIN! break out of this loop and exit the function
			return "Winner!"
		elsif matches == 3 #we were close
			we_were_close = true
		end
	end

	if we_were_close == true
		 return "So close!"
	else
		 return "LOSER"
	end

end
