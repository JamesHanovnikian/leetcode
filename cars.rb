class Cars
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def make
    @make
  end

  def is_ford
    if @make == "Ford"
      return true
    end
  end
end

cars = Cars.new("Ford", "Taurus", "2011")
puts cars.make
