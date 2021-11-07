# #1
# Write a function that accepts an array of numbers, and returns an array of the products of every pair of numbers from the array.

# Example:
# Input: [3, 4, 5, 6]
# Output: [12, 15, 18, 20, 24, 30]
# Explanation: (3 * 4, 3 * 5, 3 * 6, 4 * 5, 4 * 6, 5 * 6)

# def product(array)
#   i1 = 0
#   product_array = []
#   while i1 < array.length
#     i2 = 0
#     while i2 < array.length
#       if i1 != i2
#         product_array << array[i1] * array[i2]
#       end
#       i2 += 1
#     end
#     i1 += 1
#   end
#   product_array
# end

# p product([3, 4, 5, 6])

# #2
# Write a function that accepts two arrays of numbers, and returns an array of the products of every number from the first array multiplied by every number of the second array:
# Example:
# Input: Two arrays: [1, 2], [3, 4, 5]
# Output: [3, 4, 5, 6, 8, 10]
# Explanation: (1 * 3, 1 * 4, 1 * 5, 2 * 3, 2 * 4, 2 * 5)

# #3
# Write a function that accepts an array of numbers and returns true or false, depending on whether there is a pair of two numbers that add up to 10.

# Examples:
# Input: [2, 4, 6, 7]
# Output: true (because 4 + 6 == 10)

# Second Example:
# Input: [1, 2, 3, 4]
# Output: false (because there is no combination of two numbers that add up to 10)

# def sum_ten(array)
#   i1 = 0
#   while i1 < array.length
#     i2 = 0
#     while i2 < array.length
#       if i2 != i1
#         if array[i2] + array[i1] == 10
#           return true
#         end
#       end
#       i2 += 1
#     end
#     i1 += 1
#   end
#   false
# end

# p sum_ten([1, 2, 3, 4])

# #4
# Write a function that accepts an array of numbers, and returns the largest product of any pair of numbers within a given array.

# Example:
# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63
# Explanation: (This is -9 * -7)

# #5
# Write a function that accepts two arrays of numbers, and returns the largest sum of a number from the first array added to a number from the second array.

# Example:
# Input: Two arrays: [5, 2, 1], [7, 8, 4, 1]
# Output: 13
# Explanation: (5 from the first array + 8 from the second array)

# def largest_sum(array1, array2)
#   i1 = 0
#   highest_sum = array1[0] + array2[0]
#   while i1 < array1.length
#     i2 = 0
#     sum = 0
#     while i2 < array2.length
#       sum = array1[i1] + array2[i2]
#       if sum > highest_sum
#         highest_sum = sum
#       end
#       i2 += 1
#     end
#     i1 += 1
#   end
#   highest_sum
# end

# p largest_sum([5, 2, 1], [7, 8, 4, 1])

# #6
# Write a function that accepts two arrays of numbers, and returns an array that is the “intersection” of the two arrays, meaning an array of the numbers that are shared by the two original arrays.

# Example: Two arrays: [5, 4, 3, 2, 1], [0, 2, 4, 6]
# Output: [2, 4] (or [4, 2])
# Explanation: 2 and 4 are the only values shared by both input arrays.

# def intersection(array1, array2)
#   i1 = 0
#   intersection_array = []
#   while i1 < array1.length
#     i2 = 0
#     while i2 < array2.length
#       if array1[i1] == array2[i2]
#         intersection_array << array1[i1]
#       end
#       i2 += 1
#     end
#     i1 += 1
#   end
#   intersection_array
# end

# p intersection([5, 4, 3, 2, 1], [0, 2, 4, 6])

# #7

# Write a function that accepts an array of numbers, and returns the first duplicate value.

# Example: [5, 7, 8, 9, 8, 2, 1]
# Output: 8 (since there are two 8’s in the array)

# def dup(array)
#   i = 0
#   while i < array.length
#     number_count = {}
#     num = array[i]
#     if number_count[num] == nil
#       number_count[num] = 0
#     end
#     number_count[num] += 1
#     i += 1
#   end
#   number_count
# end

# p dup([5, 7, 8, 9, 8, 2, 1])
