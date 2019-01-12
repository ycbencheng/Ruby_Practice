s = "We test coders. What is this!"

s.split(/\?|\.|!/).map do |h| h.split.size end.max