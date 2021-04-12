a = '1'.to_s
puts a

b = 1.to_s
puts b

#nilでもオブジェクトを呼び出すことは可能

c = nil.to_s + "(nilが出力されました。)"
puts c

# trueやfalseでも呼び出し可能

d = true.to_s
puts d

e = false.to_s
puts e
