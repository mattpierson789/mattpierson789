
#We can swap elements as seen below

array = ["a", "b", "c", "d"]  # let's swap "a" and "b"
temp = array[0];              # save a copy of the first ele
array[0] = array[1];          # overwrite the first ele with the second ele
array[1] = temp;              # overwrite the second ele with the first ele copy
p array          # => ["b", "a", "c", "d"]


#There is a shortcut for this code as seen below: 

array = ["a", "b", "c", "d"]    # let's swap "a" and "b"
array[0], array[1] = array[1], array[0]
p array         # => ["b", "a", "c", "d"]



def bubble_sort(array)
    sorted = false  # when this var is false, that means the array is not fully sorted yet

    while !sorted       # while the array is not sorted...
        sorted = true       # reset the sorted flag to true 

        # the each below will perform a single 'pass' of bubble sort
        (0...array.length - 1).each do |i|
            if array[i] > array[i + 1]                              # if adjacent elements are out of order...
                array[i], array[i + 1] = array[i + 1], array[i]     #   then swap their positions
                sorted = false                                      # since we just made a swap, we may need to perform
            end                                                     # an additional 'pass', so set the flag to false
        end
    end

    array
end

print bubble_sort([3,6,1,2,4,5,10,56])