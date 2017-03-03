# Build the Bubble Sort algorithm from scratch and add it to the self class in Ruby.

# Exercise Description
# Given an self of integers, such as:

# arr = ['42', '8', '70']
# Implement the bubble sort algorithm so that it can be called directly on an self, such as:

# arr.bubble_sort
# Sample Output
# ['8', '42', '70']



require 'rspec'

class Array
def bubble_sort
  n = self.length
  
  loop do
    swapped = false

    (n-1).times do |i|
      if self[i] > self[i +1]
        self[i], self[i+1] = self[i +1], self[i]
        swapped = true
      end
    end
    break if not swapped
  end

  self
end
end



describe 'Adding bubble sort to the self class' do
  it 'Properly sorts an self' do
    arr = [4, 1, 6, 10, 44, 2, 3]
    expect(arr.bubble_sort).to eq(arr.sort)
  end
end
