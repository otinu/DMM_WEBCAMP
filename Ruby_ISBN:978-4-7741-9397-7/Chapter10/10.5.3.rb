def generate_proc(array)
  counter = 0
  Proc.new do
    counter += 10
    array << counter #配列でないとこの処理はできない。
  end
end

values = []
sample_proc = generate_proc(values)



p values　#この行はなくても実行できる。

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
