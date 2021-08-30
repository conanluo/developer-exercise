class Exercise

  # Assume that "str" is a sequence of words separated by spaces.  
  def self.marklar(str)
	rtnStr = str
	# for "keep end-of-word punctuation intact" this comment
	regEx = /[\?\.\!\:\,\"\;\+\-\*\/\\]+$/
	
	strArray = str.split(" ")
	strArray.each do |item|
		# Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
		if item.length > 4
			tempStr = item.gsub(regEx,"")	
			# If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
			if item == item.capitalize
				item.gsub!(tempStr,"Marklar")
			elsif
				item.gsub!(tempStr,"marklar")
			end
		end	
	end	
	rtnStr = strArray.join(" ")
	return rtnStr
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8)  =  10
  def self.even_fibonacci(nth)
	sum=0
	if nth == 0
		return 0
	elsif
		for i in 1..nth
			fibonacci = ->(x){ x < 2 ? x : fibonacci[x-1] + fibonacci[x-2] }
			if fibonacci[i] % 2 == 0
				sum += fibonacci[i]
			end
		end
		return sum
		
	end
  end

end

