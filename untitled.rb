class Life

	def initialize (first, middle, last, age, gender)
		@first = first
		@middle = middle
		@last = last
		@age = age
		@gender = gender
		puts "your name is #{@first} #{@middle} #{@last}"
	end

	def life_expectancy
		79 - @age
	end

	def first_name_pref?(x)
		if x == true
		puts "ok #{@first}"
		else
		use_lastname
	end

	def use_lastname
		puts @last
	end

end

bob = Life.new("bob", "harris","jones", 29)
puts bob.life_expectancy
bob.first_name_pref(false)

	