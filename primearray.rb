MAX_NUM = 10000000
def is_prime? (x)
	return true if (x == 1 or x == 2)
	y = 2  
	stop = Math.sqrt(x)
	begin
		return false if x%y == 0 
		y=y+1 
	end while (y<= stop) #ending begin 
	return true 
end #ending def

start_time=Time.now
x = 1
count = 0

i = 0 #array slot starts at zero
a = [ ] #creates empty array

begin
	if is_prime?(x)  
	a<<x #pushes values, in this case, primes, into array - writing to array
	i+= 1 #moves the array slot over, so it can keep on filling up
	count = count +1
	end #ending if
	x=x + 1 #this keeps the checker moving
end while (x<MAX_NUM) #ending begin 

a.each do |x|
	puts x
end  #ending do - this is reading the array

fin_time=Time.now
puts (fin_time-start_time)
puts count.to_s 
 