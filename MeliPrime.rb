def is_prime? (number)
divisor = 2 #start at 2, if start at 1 would result in false negative. Besides, primes are divisible by 1!
	if number%divisor == 0 
		return false
	else
		return true
	end while (divisor <number) #ending divisor loop
divisor = divisor + 1 
end #ending def
#==================================================================================
start_time = Time.now
number = 1 # this will start cycling through the range testing for if prime
begin
	if is_prime? (number) #if is_prime? is true
		puts number.to_s #then the number number will be listed - should see 1, 2, 3, 5, 7, 11... 
		number = number + 1 #this keeps the checker moving
	end while (number <= 10) #ending number loop
end #ending begin 
fin_time = Time.now
puts (fin_time-start_time)