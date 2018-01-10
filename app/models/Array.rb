class Array

	def shuffle(array)
	  counter = array.length - 1

	  while counter > 0
	    # item selected from the unshuffled part of array
	    random_index = rand(counter)

	    # swap the items at those locations
	    array[counter], array[random_index] = array[random_index], array[counter]

	    # de-increment counter
	    counter -= 1
	  end

  	array
	end
end