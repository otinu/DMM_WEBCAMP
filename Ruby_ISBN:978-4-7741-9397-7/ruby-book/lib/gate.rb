class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  def initialize(name)
    @name = name   #一つ目のテストなら、この中にシンボル:umeda が格納される。
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare     #ここで、料金を比較。ticket.fareは1つ目のテストなら  ticket = Ticket.new(150)で生成されている。
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end