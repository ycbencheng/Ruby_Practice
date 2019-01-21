# First solution

dna.chars.map do |str|
  if str == 'A'
    str.sub(/A/, 'T')
  elsif str == 'T'
    str.sub(/T/, 'A')
  elsif str == 'G'
    str.sub(/G/, 'C')
  elsif str == 'C'
    str.sub(/C/, 'G')
  end
end.join('')

# Better soltion

dna.tr("ACTG", "TGAC")
