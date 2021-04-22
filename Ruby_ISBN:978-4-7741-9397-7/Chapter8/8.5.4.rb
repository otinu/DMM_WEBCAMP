puts "知らず知らずのうちにComparableモジュールのメソッドを使って、比較をしていた。"
a = 1
b = 2

puts b > a




puts "Tempoクラスでも比較演算子を利用できるように定義"
class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=> (other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm    #ここで実際の比較が行われる。
    else
      nil  #ここをtrueに変えても、結果は変わらない ⇒ ここは一度も通らない。
    end
  end


end

puts "問題なく、比較演算子を利用できている"
t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

#おそらく、下記はt_120とt_180を単に比較しているわけではない。
#t_120オブジェクトに「>」や「<=」メソッドを使って(引数にt_180オブジェクトを渡す)、
#<=>メソッドを呼び出している。

#bpm <=> other.bpm　について
#おそらく、bpmは呼び出した側のオブジェクトのbpm(つまり、t_120のbpm)を指す。
#otherには引数として渡されたt_180が格納されている。そのため、other.bpmの形で指定する。
puts t_120 > t_180
puts t_120 <= t_180
puts t_180 == t_120


puts "UFO演算子を未使用のため、Testクラスを定義しても、Testクラスで比較演算子は利用できない。"
class Test
  include Comparable
  attr_reader :test
  def initialize(test)
    @test = test
  end
end

test_1 = Test.new(150)
test_2 = Test.new(300)

puts test_1 > test_2


