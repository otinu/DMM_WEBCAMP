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
      bpm <=> other.bpm
    else
      nil
    end
  end


end

puts "問題なく、比較演算子を利用できている"
t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

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


