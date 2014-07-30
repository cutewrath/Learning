SIZE = 157
RULE_30 = [0,1,1,1,1,0,0,0]

#convert binary values from index trios to an integer for Rule 30 check
def value (right, center, left)
	value = right
	value = value + (center<<1)
	value = value + (left << 2)
	return value 
end

def lookup(value)
	raise ArgumentError, "value past end of rule"  if value >= RULE_30.count
	return RULE_30[value]
end

a = []
a[0] = Array.new(SIZE)
a[1] = Array.new(SIZE)
f = 0
b = 1

#fill front array indexes with values
i = 0
begin 
	a[f][i] = rand(2) 
	i = i +1
end while (i <SIZE)

#read front array indexes to get trios for get_value conversion 	
begin 
	SIZE.times do |i|
		if i == 0
			left = a[f][SIZE-1]
			center = a[f] [i]
			right = a[f] [i + 1]
		
		elsif i == SIZE - 1
			left = a[f] [i-1]
			center = a[f] [i]
			right = a[f] [0]
		
		else
			left = a[f] [i-1]
			center = a[f] [i]
			right = a[f] [i + 1]
			
	end #end if

		v = value(right, center, left)
		a[b][i] = lookup v
		
end #end do

#flip
temp = f
f = b
b = temp

#add stars
front = ''
a[f].each do |value|
	if value  == 1
		front << '*'
	else 
		front << ' '
	end #end if
end  #end do
puts front 

sleep 0.1

	# read the keyboard in a non-blocking fashion
	# http://stackoverflow.com/questions/946738/detect-key-press-non-blocking-w-o-getc-gets-in-ruby
	system("stty raw -echo")
  char = STDIN.read_nonblock(1) rescue nil
  system("stty -raw echo")

end while char.nil?











































