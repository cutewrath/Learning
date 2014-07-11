MAX_NUM = 10000000

@a = [ ] #creates empty array


def is_prime? (x)
	return true if (x == 1 or x == 2)
	y = 0
	stop = Math.sqrt(x)
	begin
		y=y+1 
		return false if (x % @a[y]) == 0 
	end while (@a[y] <= stop) #ending begin 
	return true 
end #ending def

start_time=Time.now
x = 1
count = 0

begin
	if is_prime?(x)  
	@a<<x #pushes values, in this case, primes, into array - writing to array
	count = count +1
	end #ending if
	x=x + 1 #this keeps the checker moving
end while (x<MAX_NUM) #ending begin 

@a.each do |x|
	puts x
end  #ending do - this is reading the array

fin_time=Time.now
puts (fin_time-start_time)
puts count.to_s 
 