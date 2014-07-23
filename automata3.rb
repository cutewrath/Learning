#create two arrays
i = 0
#f = [  ]
#b = [  ]

SIZE = 13
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
begin 
	a[f][i] = rand(2) 
	i = i +1
end while (i <SIZE)

#read front array indexes to get trios for get_value conversion 
a[b].count.times do |i|
	if i == 0
	left = a[f] [a[f].count -1]
	center = a[f] [i]
	right = a[f] [i + 1]
	elsif i == a[f].count - 1
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
	
	a[f].each do |i|
	if i ==1
		puts '*' 
		else puts ' '
	end #end if
end #end do

a[b].each do |i|
	if i ==1
		puts '*'
		else puts ' '
	end #end if
end #end do
	
end #end do

if f == 0
	f = 1
	b = 0
end 