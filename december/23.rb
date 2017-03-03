# Exercise Description
# Write a program that automatically generates an array containing 20 random integers, ranging from 1 to 1000.

# Sample Output
# => [695, 627, 849, 315, 203, 520, 433, 837, 923, 796, 6, 472, 964, 717, 549, 963, 787, 20, 589, 628]

require 'rspec'

def random_numbers
  Array.new(20) { rand 1000 }
end


describe 'Random number collection generator' do
  it 'creates a collection of random numbers ranging from 0 to 999' do
    # Not a perfect test since there is a slight chance for duplicate
    # Arrays to be created
    random_set_one = random_numbers
    random_set_two = random_numbers
    expect(random_numbers.count).to eq(20)
    expect(random_set_one).to_not eq(random_set_two)
  end
end
