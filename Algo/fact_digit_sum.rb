def fact_digital_sum(factorial)
  arr = (1..factorial).to_a.reverse.each{ |i| factorial += factorial * (i-1)}
  factorial.to_s.split(//).map(&:to_i).inject(:+)
end

p fact_digital_sum(100)