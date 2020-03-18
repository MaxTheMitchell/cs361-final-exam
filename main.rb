# As a customer,
# I want to estimate the cost of renting four bikes
#   for a week
# So that I know how much money I will need to pay

require_relative 'bmx_bike'
require_relative 'road_bike'
require_relative 'mountain_bike'

bikes = [
  BmxBike.new,
  RoadBike.new,
  MountainBike.new,
  MountainBike.new
]

total_price = 0
total_price += bikes[0].total_price(7,0)
total_price += bikes[1].total_price(7,0)
total_price += bikes[2].total_price(7,0)
total_price += bikes[3].total_price(7,0)

puts "Total price: #{total_price}"
