class Cars
  @@total_cars = 0
  attr_accessor(:make, :model, :year)

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def self.calculate_totalcars
    return @@total_cars
  end
end

cars = Cars.new("Ford", "Taurus", "2011")

puts cars.make

cars.make = "Tesla"
puts cars.make

Cars.calculate_totalcars


