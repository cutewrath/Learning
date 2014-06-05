#set to generate a random number between 10 and 20
target = rand(10) +10
puts "I\'m thinking of a number between 10 and 20. Can you guess it?"
#set tries to zero
tries = 0
begin
	tries = (tries +1) #tracking number of tries until correct
	reply = gets.chomp.to_i
	if  (tries == 3) #when I used > instead of == it putsed EVERY time, not just the first time we hit 3.
		puts 'Would you like to take a break? Apparently this could take a while.'
	end #tried end at end of loop and it crashed program. I'm not sure why, 
	if  (reply >20) or (reply <10)
	puts 'Invalid range. Guess a number between 10 and 20.'
	end #same issue here. I'm not sure why it doesn't work if I don't close it up here.
	if reply < target
		puts 'Nope. It\'s higher. Try again.'
	elsif reply > target
		puts 'Nice attempt, but it\'s lower. Try again.'
	end
end while (reply!=target)
	puts 'Correct!' 
	
if (tries==1)
	puts 'You win! This only took 1 try!'
elsif (tries>1)
	puts 'This only took you ' +tries.to_s+ ' tries!'
end 

