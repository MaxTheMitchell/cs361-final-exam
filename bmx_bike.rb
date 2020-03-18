require_relative 'tail_pack'

class BmxBike

  attr_reader :tail_pack,:weekly_price, :daily_price, :hourly_price

  def initialize
    @tail_pack = TailPack.new
    @weekly_price = 70
    @daily_price = 20
    @hourly_price = 5
  end


  def total_price(days,hours)
    tail_pack_price + weekly_rate*(days/7).to_i + daily_rate*(days%7)+ hourly_rate*hours
  end

  def clean
    puts "Cleaning..."
  end

  def adjust_seat
    puts "Adjusting seat..."
  end

  def tail_pack_price
    tail_pack.cost
  end

  def weekly_rate
    @weekly_price
  end

  def daily_rate
    @daily_price
  end

  def hourly_rate
    @hourly_price
  end

end
