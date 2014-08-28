def bubble_sort array
	if array.is_a? Array
		array.size.times do
			(0...array.size-1).each do |i|
				if array[i] > array[i+1]
					temp = array[i]
					array[i] = array[i+1]
					array[i+1] = temp
				end

			end
		end
	end
	array
end

p bubble_sort([6,2,6,1,4])