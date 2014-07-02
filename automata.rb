array_slot = 0
@a_front = [  ]
@a_back = [  ]

begin 
	@a_front<< rand(2) 
	array_slot = array_slot +1
end while (array_slot <8)
	
puts @a_front.to_s #temporary to test

def value
	@a_front [0,1,2] #how do I tell it to check the first three array_slot and then move to the next three? :( 
	return value 
	end #ending def value

#========================================
#does ruby know to read binary and calc one number from set of 3 from array? I think not. :(
def rule_30
	if value == 7 #111 gets 0
		@a_back << 0 
	elsif value == 6 #110 gets 0
		@a_back << 0 
	elsif value == 5 #101 gets 0
		@a_back << 0
	elsif value == 4 #100 gets 1
		@a_back << 1
	elsif value == 3  #011 gets 1
		@a_back << 1
	elsif value == 2 #010 gets 1
		@a_back << 1
	elsif value == 1 #001 gets 1
		@a_back << 1
	elsif value == 0 #000 gets 0
		@a_back << 0
	end #end if
end while (array_slot <8) #end def

#========================================

puts @a_back.to_s #temporary to test

