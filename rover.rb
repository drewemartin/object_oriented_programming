class Rover

	def initialize (name, x, y, direction)
		@x = x
		@y = y
		@direction = direction #current_heading
		@name = name
	end

	def do_instructions(instructions)
		instructions.split("").each do |instruction|
			if instruction == "L" || instruction == "R"
				turn(instruction)
			else
				move
			end
		end
	end

	def turn(instruction)
		directions = ["S", "W", "N", "E"]
		current_heading = directions.index(@direction)

		if instruction == "L" && current_heading == 0
			puts directions[3]
			current_heading += 3


		elsif instruction == "L"
			puts directions[current_heading - 1]
			current_heading -= 1

		elsif instruction == "R" && current_heading == 3
			puts directions[0]
			current_heading -= 3
		
		elsif instruction == "R"
			puts directions[current_heading + 1]
			current_heading += 1
		end
		@direction = directions[current_heading]

	end

	def move 
		if @direction == "E" 
			@x += 1

		elsif @direction == "W"
			@x -= 1

		elsif @direction == "N"
			@y += 1

		elsif @direction == "S"
			@y -= 1
		end	

		puts "#{@name} is at #{@x} and #{@y} facing #{@direction}"
	end	

end	

puts "Hello, What would you like to call the rover?"
re_sponse = gets.chomp
puts "Ok, what is the x coordinate of #{re_sponse}?"
x_cord = gets.chomp.to_i
puts "What is the y coordinate of #{re_sponse}"
y_cord = gets.chomp.to_i
puts "What direction are you facing"
facing = gets.chomp
puts "And what are your driving directions"
driving_directions = gets.chomp
puts "Great! #{re_sponse} is staring at #{x_cord} and #{y_cord} and #{driving_directions} are your instructions"

nasa1 = Rover.new(re_sponse, x_cord, y_cord, facing)
nasa1.do_instructions(driving_directions)

 








	