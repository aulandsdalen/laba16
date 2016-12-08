def quicksort(array)
	if array.length <= 1
		return array
	elsif array.length > 1
		less = Array.new
		equal = Array.new
		greater = Array.new
		pivot = array[array.length/2] # using middle as a pivot
		array.each do |x| 
			if x < pivot
				less.push(x)
			elsif x == pivot
				equal.push(x)
			elsif x > pivot
				greater.push(x)
			end
		end
		# to understand recursion, one must first understand recursion
		less = quicksort(less)
		greater = quicksort(greater)
		return [*less, *equal, *greater]
	end
end

def rand_array(size, max_value) # returns array of size populated with random numbers 0..max_value
	size.times.map{ Random.rand(max_value) }
end

puts "Enter size of array and max value, space separated: "
input = gets.chomp.split(" ")
unsorted_array = rand_array(input[0].to_i, input[1].to_i)

puts "Unsorted: ", unsorted_array.join(", ")

sorted_array = quicksort(unsorted_array)

puts "Sorted: ", sorted_array.join(", ")