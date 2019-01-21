require 'rspec'

def html(hash)
  hash.map{ |i| i * "="} * "&"
end

hash = {a: "b", c: "d", e: 'f'}

html(hash)

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end
