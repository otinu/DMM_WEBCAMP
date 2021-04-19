def generate_proc(array)
  counter = 0
  Proc.new do #ここで、Procオブジェクトを生成
    counter += 10
    array << counter #配列でないとこの処理はできない。
  end
end

values = []
sample_proc = generate_proc(values)

a = <<"EXPLAIN"
ローカル変数valuesはメソッドの終了とともに、格納された値が解放(?)される。
そのため、valuesの中身は空となり、元々与えられていた配列の形[]だけが返る。 \n
EXPLAIN

puts a
p values
puts " \n "

b = <<"COMMENT"
しかし、Procオブジェクトでは格納された値は解放(?)されずに残っている。
そのため、Procオブジェクトを呼び続けると、配列にどんどん値が追加されていく。 \n
COMMENT

puts b

sample_proc.call
p values

sample_proc.call
p values

sample_proc.call
p values

sample_proc.call
p values

sample_proc.call
p values
