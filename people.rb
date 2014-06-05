class Person
	#attr_accessor :name

	def initialize(name)
		@name = name
	end

	def greet
		"Hello, my name is #{@name}"
	end

end


class Student < Person
	def learn
		puts "I get it"
	end	
end




class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

p = Person.new("bob")
puts p.greet

f = Student.new("Cristina")
puts f.greet
puts f.learn

d = Instructor.new("Chris")
puts d.greet
puts d.teach

puts f.teach
puts d.learn

# explanation
# .teach and .learn work with the respective instances of the their classes' and 
# fail outside of their classes' due to the limited nature of their scope. 

