require_relative 'pannier'

class RoadBike

  def initialize(panniers)
    @panniers = panniers
    @daily_rate = 15
  end

  def total_price(days,hours)
    total_pannier_price + daily_rate*days
  end

  def clean
    puts "Cleaning..."
  end

  def lubricate_gears
    puts "Lubricating gears..."
  end

  def total_pannier_price
    panniers.reduce(0){|t,p|t+p.price}
  end

  def panniers
    @panniers
  end

  def daily_rate
    @daily_rate
  end

end
