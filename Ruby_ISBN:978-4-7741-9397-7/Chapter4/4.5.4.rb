puts "範囲オブジェクトを用いて配列を作成"

a = (1..5).to_a
p a

b = (1...5).to_a
p b

c = ("User1".."User5").to_a
p c

d = ("bad".."bag").to_a
p d