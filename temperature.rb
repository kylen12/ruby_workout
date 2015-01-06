def temperature()

	puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"

	choice = gets.chomp()
	puts "Enter Temperature: "
	temperature = gets.chomp()

	if choice == '1'
		f = (temperature.to_i * 9) / 5 + 32
		puts "#{temperature} degress Celsius is equal to #{f} degrees Fahrenheit"
	else
		c = (temperature.to_i - 32) * (5/9)
		puts "#{temperature} degrees Fahrenheit is equal to #{c} degrees Celsius"
	end


end