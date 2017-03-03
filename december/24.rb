require 'rspec'
require 'benchmark'

arr = Array.new(1_000) {rand 1000}

def new_max array_of_elements
  max_value = 0

  arr.each do |i|
    if i > max_value
      max_value = i
    end
  end

max_value
end

Benchmark.bm(10) do |x|
  x.report('Each: ') { max_value }
  x.report('Sorted: ') { arr.sort.last }
end


# def new_max array_of_elements
  
# end

# describe 'New Max method' do
#   it 'returns the max value from an array efficiently' do
#     test_array = [2, 4, 10, 3, 1]
#     expect(new_max(test_array)).to eq(10)
#   end
# end
