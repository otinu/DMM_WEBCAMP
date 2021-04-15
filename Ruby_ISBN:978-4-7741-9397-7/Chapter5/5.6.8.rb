h = Hash.new { |hash, key| hash[key] = "Hello" }

h[:foo]
h[:bar]
h[:apple]
h[:melon]

puts h

