class Hamming
	def self.compute(first_strand,second_strand)
		length=first_strand.length
		raise ArgumentError unless length==second_strand.length
		difference=0

		# length.times do |index|
		# 	if first_strand[index] != second_strand[index]
		# 		difference+=1
		# 	end
		# end

		#or
		first_strand.each_char.with_index do |char,index|
			if char != second_strand[index]
				difference += 1
			end
		end
		
		return difference
	end
end
