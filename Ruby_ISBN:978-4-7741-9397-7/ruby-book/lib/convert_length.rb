UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end

puts convert_length(340, from: :in, to: :ft)

puts "第一引数に数字だけ渡し、第二・第三引数は何も指定しなかった場合、"
puts "convert_lengthの第二・第三引数のデフォルト値はシンボルm になる。"

puts convert_length(1000)
puts "つまり、1000mを1000mに変換(?)することになる。"