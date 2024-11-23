class MyCar
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
  def info
    puts "You're moving at #{@current_speed} mph"
  end
end

toyota = MyCar.new(2023, "White", "Corolla")
puts toyota.info
toyota.speed_up(36)
puts toyota.info
toyota.brake(12)
puts toyota.info
toyota.shut_down
puts toyota.info
