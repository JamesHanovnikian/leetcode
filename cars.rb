# class Cars
#   @@total_cars = 0
#   attr_accessor(:make, :model, :year)

#   def initialize(make, model, year)
#     @make = make
#     @model = model
#     @year = year
#   end

#   def self.calculate_totalcars
#     return @@total_cars
#   end
# end

# cars = Cars.new("Ford", "Taurus", "2011")

# puts cars.make

# cars.make = "Tesla"
# puts cars.make

# Cars.calculate_totalcars

# def number_of_pairs(nums)
#     # output is [pairs, leftover(Nums)]
#     hash_counter = {}
#     i = 0
#     pairs = 0
#     while i < nums.length
#         if hash_counter[nums[i]] == nil
#             hash_counter[nums[i]] = 0
#         end
#         hash_counter[nums[i]] += 1
#         i += 1
#     end
#     remainder = 0
#     hash_counter.each do |num, freq|
#         if freq % 2 == 0
#             pairs = pairs + freq / 2
#         else
#             pairs = pairs + freq / 2
#             remainder = remainder + freq % 2
#         end
#     end
#     [pairs, remainder]
# end


