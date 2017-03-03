# Given any number of hash items, such as:

# hash = { :topic => "baseball", :team => "astros" }
# Convert the hash keys and values into a URL friendly parameter string.


require 'rspec'

class Hash
  def param_converter
    self.map { |i| i * "="} * "&"
  end
end

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end



