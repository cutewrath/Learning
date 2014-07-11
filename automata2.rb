#create two arrays
i = 0
f = [  ]
b = [  ]

#fill front array indexes with values
begin 
	f<< rand(2) 
	i = i +1
end while (i <8)
	
puts f.to_s #temporary to test

#read front array indexes to get trios for get_value conversion 
b.count.times do |i|
	if i == 0
	left = f.count -1
	center = f [i]
	right = f [i + 1]
	elsif i == f.count - 1
	left = f [i-1]
	center = f [i]
	right = f [0]
	else i > 0 
	left = f [i-1]
	center = f [i]
	right = f [i + 1]
	end #end if
end #end do

#convert binary values from index trios to an integer for Rule 30 check
def value (right, center, left)
	value = right
	value = value + (center<<1)
	value = value + (left << 2)
return value 

 #check value against Rule 30
begin # Rule 30
	if value == 7 #111 gets 0
		b<< 0 
	elsif value == 6 #110 gets 0
		b<< 0 
	elsif value == 5 #101 gets 0
		b<< 0
	elsif value == 4 #100 gets 1
		b<< 1
	elsif value == 3  #011 gets 1
		b<< 1
	elsif value == 2 #010 gets 1
		b<< 1
	elsif value == 1 #001 gets 1
		b<< 1
	elsif value == 0 #000 gets 0
		b<< 0
	end #end if
end while (i <8) #end begin
end #end def

puts b.to_s #temporary test, but the array is empty

#next add flip arrays
#next add stars
