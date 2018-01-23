require 'rspec'

def dif_rev(str)
	str.chars.reduce { |x, y| y + x }
end

describe 'Letter reversing' do
  it 'reverses the letters of a string without using the reverse method' do
    expect("Hi there".alt_reverse).to eq("ereht iH")
  end
end

