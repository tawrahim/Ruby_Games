# This is just a basic Unit conversion tool
# Author: Tawheed Abdul-Raheem
# url: www.tawheedraheem.com

class Conversion

	# from = "fahrenheit" or "celcius" or "kelvin"
	# Given a temprature "n" in the units "from", determine the temprature in the other
	# two units. This method returns a simple array with these two values in the 
	# simple [0],[1] order of fahrenheit, celcius, and/or kelvin. Ommitting the one
	# value that was supplied as "from" in the method call.
	def temprature(n, from)
		result = []
		from.downcase.strip!
		if from == "fahrenheit"
			c = ((5.0/9)*(n-32))
			k = ((5/9.0)*(n-32)+273.15)
			result[0] = c
			result[1] = k
		elsif from== "celcius"
			k = ((5/9.0)*(n-32)+273.15)
			f = (((n-273.15)*(9/5.0))+32)
			result[0] = k
			result[1] = f
		elsif from == "kelvin"
			c = ((5.0/9)*(n-32))
			f = (((n-273.15)*(9/5.0))+32)
			result[0] = c
			result[1] = f
		else
			puts from
			puts "Not found"
		end
		return result
		
	end
end

convert = Conversion.new
puts convert.temprature(78,"celcius")
