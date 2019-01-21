require 'rspec'

def bubble_sort(array)
  n = array.length

  loop do
    swapped = false
    (n-1).times do |i|
      if array [1] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a = [1, 2, 4, 11, 1, 1, 0]
p bubble_sort(a)


describe 'Adding bubble sort to the Array class' do
  it 'Properly sorts an array' do
    arr = [4, 1, 6, 10, 44, 2, 3]
    expect(arr.bubble_sort).to eq(arr.sort)
  end
end
