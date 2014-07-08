array_slot = 0
@a_front = [  ]
@a_back = [  ]

begin 
	@a_front<< rand(2) 
	array_slot = array_slot +1
end while (array_slot <8)

puts @a_front.to_s #temp for testing

puts @a_front [0, 3] #temp for testing

if @a_front [0, 3] == [1,1,1] #111 gets 0
		@a_back << 0 
	elsif @a_front [0, 3] == [1,1,0] #110 gets 0
		@a_back << 0 
	elsif @a_front [0, 3] == [1,0,1] #101 gets 0
		@a_back << 0
	elsif @a_front [0, 3] == [1,0,0] #100 gets 1
		@a_back << 1
	elsif @a_front [0, 3] == [0,1,1]  #011 gets 1
		@a_back << 1
	elsif @a_front[0, 3] == [0,1,0] #010 gets 1
		@a_back << 1
	elsif @a_front [0, 3] == [0,0,1] #001 gets 1
		@a_back << 1
	elsif @a_front [0, 3] == [0,0,0] #000 gets 0
		@a_back << 0
end #end if

if @a_front [1, 3] == [1,1,1] #111 gets 0
		@a_back << 0 
	elsif @a_front [1, 3] == [1,1,0] #110 gets 0
		@a_back << 0 
	elsif @a_front [1, 3] == [1,0,1] #101 gets 0
		@a_back << 0
	elsif @a_front [1, 3] == [1,0,0] #100 gets 1
		@a_back << 1
	elsif @a_front [1, 3] == [0,1,1]  #011 gets 1
		@a_back << 1
	elsif @a_front[1, 3] == [0,1,0] #010 gets 1
		@a_back << 1
	elsif @a_front [1, 3] == [0,0,1] #001 gets 1
		@a_back << 1
	elsif @a_front [1, 3] == [0,0,0] #000 gets 0
		@a_back << 0
end #end if


#========================================

puts @a_back.to_s #temporary to test

