# def one_off(my_ticket, winning_ticket)
# 	i = 0
# 	c = 0
# 	4.times do 
# 		if my_ticket[i] == winning_ticket[0][i]
# 			then c += 1
# 		end
# 		i += 1
# 	end
# 		if c == 3
# 			"Close!"
# 		elsif
# 			c == 4
# 			"Winner!"
# 		else
# 			c <= 2 
# 			"You Lose"
# 		end
# end

def find_winners(our_ticket, winning_tickets)
	matches = []
	winning_tickets.each do |winning_ticket|
		if winning_ticket == our_ticket
		matches << our_ticket
		end
	end
	matches
end
