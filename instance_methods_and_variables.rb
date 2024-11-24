class Vehicle
  attr_accessor :color
  attr_reader :year, :model
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end
  def speed_up(number)
    @current_speed += number
  end
  def brake(number)
    @current_speed -= number
  end
  def shut_down
    @current_speed = 0
  end
  def spray_paint(color_of_choice)
    @color = color_of_choice
  end
  def self.gas_mileage(miles, gallons)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end
class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  def info
    puts "Your #{@color} #{year} #{@model} is moving at #{@current_speed} mph."
  end
end

class MyTruck
  NUMBER_OF_DOORS = 2
end

toyota = MyCar.new(2023, "White", "Corolla")
puts toyota.info
toyota.speed_up(36)
puts toyota.info
toyota.brake(12)
puts toyota.info
toyota.shut_down
puts toyota.info
toyota.spray_paint("Blue")
toyota.info
