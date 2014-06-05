start_time = Time.now
x = (1..100) # finding prime numbers 100 and lower
t = (1..100) #need to divide x by every number x & lower to determine if prime. Keeps barfing when I add while <=x. Prime is only divisible by 1 and self.
def is_prime? (x)
	y = (x/t).to_i
	z = y*t
	if z=x
		return false
	else
		return true
	end

x=1 # this will start cycling through the range testing for if prime
begin
	if is_prime? (x) #if is_prime? is true
		puts x.to_s #then the number x will be listed - should see 1, 2, 3, 5, 7, 11... 
		x = x+1 #this keeps the checker moving
	end while (x <=100) # this stops the checker - done at 100
end
end

fin_time = Time.now
puts (fin_time-start_time)