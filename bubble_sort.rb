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


def bubble_sort_by(array)
	if array.is_a? Array
		array.size.times do
			(0...array.size-1).each do |i|
				if yield(array[i], array[i+1])<0
					temp = array[i]
					array[i] = array[i+1]
					array[i+1] = temp
				end

			end
		end
	end
	array
end

p bubble_sort([4,3,78,2,0,2])
p (bubble_sort_by (["hi","hello","hey"]) do |left,right|
    right.length - left.length
end )




    

