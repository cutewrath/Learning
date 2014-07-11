MAX_NUM = 10000
def is_prime? (x)
	return true if (x == 1 or x == 2)
	y = 2  
	begin
		return false if x%y == 0 
		y=y+1 
	end while (y<=Math.sqrt(x)) #ending begin 
	return true 
end #ending def

start_time=Time.now
x=1
count = 0
begin 
array_primes = Proc.new do |array| #build array of primes 
	array.push x if is_prime? (x)  
	count = count +1
	end #ending do 
	x=x + 1 #this keeps the checker moving
end while (x<MAX_NUM) #ending begin 

puts array_primes.to_s

puts array_primes[MAX_NUM].inspect #i need to verify this works before replacing sqrt (x) in def. 

fin_time=Time.now
puts (fin_time-start_time)
puts count.to_s