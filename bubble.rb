def bubble_sort(array)
  # Handle edge cases: empty or single-element array
  return array if array.empty? || array.size == 1

  # Outer loop controls the number of passes
  (array.size - 1).downto(1) do |outer|
    swapped = false

    # Inner loop compares adjacent elements
    0.upto(outer - 1) do |inner|
      # Swap if elements are in the wrong order
      if array[inner] > array[inner + 1]
        array[inner], array[inner + 1] = array[inner + 1], array[inner]
        swapped = true
      end
    end

    # Break if no swaps occurred in the inner loop (already sorted)
    break unless swapped
  end

  # Return the sorted array
  array
end

# Test cases
unsorted_array = [4,3,78,2,0,2]
p bubble_sort(unsorted_array)  

sorted_array = [1, 2, 3]
p bubble_sort(sorted_array)  
