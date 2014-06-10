def is_prime? (x)
	return true if (x == 1 or x == 2)
	y = 2  
	begin
		return false if x%y == 0 
		y=y+1 
	end while (y<x) #ending begin 
	return true 
end #ending def

start_time=Time.now
x=1
begin
	if is_prime?(x)  
		puts x.to_s #then the x number will be listed - should see 1, 2, 3, 5, 7, 11... 
	end
	x=x + 1 #this keeps the checker moving
end while (x<1000) #ending if

fin_time=Time.now
puts (fin_time-start_time)