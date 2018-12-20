require 'rspec'

def new_max array_of_elements
  # too slow
  # array_of_elements.sort.last

  quick_max = 0
  
  array_of_elements.each do |ele|
    quick_max = ele if ele > quick_max
  end

  quick_max
end

describe 'New Max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end
