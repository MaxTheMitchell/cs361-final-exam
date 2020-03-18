
class MountainBike

  def initialize(luggage)
    @luggage = luggage
    @weekly_rate = 90
    @daily_rate = 25
    @hourly_rate = 10
  end

  def total_price(days,hours)
    luggage_price + weekly_rate*(days/7).to_i + daily_rate*(days%7)+ hourly_rate*hours
  end

  def clean
    puts "Cleaning..."
  end

  def adjust_suspension
    puts "Adjusting suspension..."
  end

  def luggage_price
    luggage.price
  end

  def luggage
    @luggage
  end

  def weekly_rate
    @weekly_rate
  end

  def daily_rate
    @daily_rate
  end

  def hourly_rate
    @hourly_rate
  end

end
