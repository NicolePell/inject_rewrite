class Array

	def accum(value=nil)
		arr = self.dup

		if value == nil
			accumulator_variable = arr.shift
		else
			accumulator_variable = value
		end
		arr.each do |element|
				accumulator_variable = yield element, accumulator_variable
			end

		accumulator_variable
	end
end

