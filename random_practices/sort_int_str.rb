# Your task is to sort a given string. 
# Each word in the string will contain a single number. 
# This number is the position the word should have in the result.

# First solution
str_arr = words.split.to_a

sorted = []

(1..9).each {|num|
  str_arr.each {|word|
    sorted << word if word.include?(num.to_s)
  }
}

sorted.join(' ')

# Better solution
words.split.sort_by { |w|
  w.chars.min
}.join(' ')