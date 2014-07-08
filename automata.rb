array_slot = 0
@a_front = [  ]
@a_back = [  ]

begin 
	@a_front<< rand(2) 
	array_slot = array_slot +1
end while (array_slot <8)

puts @a_front.to_s #temp for testing
puts @a_front [0, 3]
trio = @a_front [0, 3]

begin 
	if trio ([1,1,1] )#111 gets 0
		@a_back << 0 
	elsif trio [1,1,0] #110 gets 0
		@a_back << 0 
	elsif trio [1,0,1] #101 gets 0
		@a_back << 0
	elsif trio [1,0,0] #100 gets 1
		@a_back << 1
	elsif trio [0,1,1]  #011 gets 1
		@a_back << 1
	elsif  trio [0,1,0] #010 gets 1
		@a_back << 1
	elsif trio [0,0,1] #001 gets 1
		@a_back << 1
	elsif trio [0,0,0] #000 gets 0
		@a_back << 0
end #end if
array_slot = array_slot +1
end 


#========================================

puts @a_back.to_s #temporary to test

