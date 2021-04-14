puts "【rjust】メソッド"
puts "第一引数は桁数、第二引数は桁余りを何で埋めるかを指定(デフォルトは空白文字)"



=begin (1回目のコード)

def to_hex(r, g, b)
  "#" +
  r.to_s(16).rjust(2, "0") +
  g.to_s(16).rjust(2, "0") +
  b.to_s(16).rjust(2, "0")
end

=end

#==============================================================================================

=begin (2回目のコード) DRYの原則に則り、同じ処理の繰り返しをなくした。

def to_hex(r, g, b)
  hex = "#"
  [r, g, b].each do |n|
    hex += n.to_s(16).rjust(2, "0")
  end
  hex                                 #Rubyでは「return」を記述しない。この1行が「return hex」
end


=end

#==============================================================================================
  #to_hexメソッドの完成形

def to_hex(r, g, b)
  puts "【to_hex】メソッドの作成"
  [r, g, b].inject("#") do |hex, n|
    hex + n.to_s(16).rjust(2, "0")   # .to_sと.rjust の二つのメソッドを一度に使用している。
  end
end



#==============================================================================================

=begin (1回目のコード)

def to_ints(hex)
 puts "【to_ints】メソッドの作成"
 r = hex[1..2]
 g = hex[3..4]
 b = hex[5..6]
 ints = []
 [r, g, b].each do |s|
   ints << s.hex
 end
 ints
end

=end

#==============================================================================================

=begin

def to_ints(hex)
 puts "【to_ints】メソッドの作成"
 r = hex[1..2] #配列hexの1と2(要素番号は0と1)番目を「r」に格納。　この文章、実践ならいらない。コードの意味そのまま。
 g = hex[3..4]
 b = hex[5..6]
 [r, g, b].map do |s|
   s.hex
 end
end

=end

#==============================================================================================
 #to_intsメソッドの完成形

def to_ints(hex)
 puts "【to_ints】メソッドの作成"
 hex.scan(/\w\w/).map(&:hex) #\w はa～z、A～Z、1～9 いずれか1文字
end


p to_hex(231, 23, 1)
p to_ints("#2a563d")