def is_prime? (x)
	if (x == 1 or x == 2)
		return true
	end
	y = 2 #start at 2, if start at 1 would result in false negative. Besides, primes are divisible by 1!
	if x%y == 0 
		return false
	elsif (Math.sqrt(x))/(y) == 1
		return false
	else 
		return true 
	y=y+1 
	end while (y<x) #ending y loop	
end #ending def

start_time=Time.now
x=1
begin
	if is_prime?(x)  
		puts x.to_s #then the x x will be listed - should see 1, 2, 3, 5, 7, 11... 
	end
	x=x + 1 #this keeps the checker moving
end while (x<1000) #ending if

fin_time=Time.now
puts (fin_time-start_time)