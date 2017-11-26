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

  
def so_close(close_tickets, winners)
	counter = 0
	close_tickets.each_with_index do |num, position|
		# puts num
		# puts position

		#comparing values and positions in each array
		# puts
		# puts
		# puts num.to_s + " -- " + winners[position].to_s


		#splitting close ticket array
		splitter1 = num.to_s.split("")
		puts 
		puts
		print splitter1
		puts
		splitter2 = winners[position].to_s.split("")
		print splitter2

		splitter1.each_with_index do |splitnumber,splitposition|
			if splitnumber == splitter2[splitposition]
				counter += 1
			end
		end
		puts
		puts counter.to_s + " matches"
	end
	if counter == 4
		 "Winner!!"
	elsif counter == 3
		 "So close!"
	else
		 "LOSER"
	end

end







# 	if close_tickets.each(my_ticket) == true
# 		puts "So Close"
# 	else
# 		puts "Sorry, you lose"
# 	end
	# if winners.each(my_ticket) == true
	# 	puts "So Close!"
	# else
	# 	puts "Sorry, you lose."
	# e


