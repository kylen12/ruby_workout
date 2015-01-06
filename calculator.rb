def calculator()
	 puts "What calculation would you like to do? (add, sub, mult, div)"

	 while true
	 	choice = gets.chomp()

	 	if choice == 'add' || choice == 'sub' || choice == 'mult' || choice == 'div'
	 		break;
	 	else
	 		puts "Please enter 'add', 'sub', 'mult', or 'div'"
	 	end
	 end

	 puts "Enter first number: " 
	 num1 = gets.chomp()

	 puts "Enter second number: " 
	 num2 = gets.chomp()
	 if choice == 'add'
	 	puts "Sum is #{num1.to_i + num2.to_i}"

	 elsif choice == 'sub'
	 	puts "Difference is #{num1.to_i - num2.to_i}"

	 elsif choice == "mult"
	 	puts "Product is #{num1.to_i * num2.to_i}"

	 elsif choice == "div"
	 	puts "Quotient is #{num1.to_i / num2.to_i}"

	 end

end