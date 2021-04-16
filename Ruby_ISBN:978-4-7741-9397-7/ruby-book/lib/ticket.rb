class Ticket
  attr_reader :fare, :stamped_at #運賃(fare)と乗車駅(stamped_at)を外部から取得
  
  def initialize(fare)
    @fare = fare
  end
  
  def stamp(name)
    @stamped_at = name
  end
end