class Product

	attr_accessor :name, :price

	def initialize(name, price)
	@name = name
	@price = price
	end

	def is_not_exempt?(tf)
		if tf == true
			@price = @price * 11
			puts @price
		else
			@price = @price
		end
	end

	def is_imported?(tf)
		if tf == true
			@price = @price * 5
			puts @price
		else
			@price = @price
		end
	end	

	def in_hash
		h = {}
		h[@name] = @price
	end
end

stuff = Product.new("Book", 12)

stuff.is_not_exempt?(true)
stuff.is_imported?(true)
l = stuff.in_hash
puts l 

#Dear Reader,

# This is an exceptionally crude begining of the the "Sales Tax" exercise. I didn't start to 
# understand it until it hit me in my morning shower. It still needs floats, an input method, 
# a structured output method, and a rounding method.

# best,

# Drew