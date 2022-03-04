# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

# Example 1:

# Input: nums = [2,7,11,15], target = 9

# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

# def two_sum(nums, target)
#   x = 0
#   while x < nums.length # 1
#     y = 0               # 2
#     nums.length.times do
#       if x != y # 4
#         if nums[x] + nums[y] == target # 5
#           return [x, y]
#         end             # 6
#       end               # 7
#       y += 1            # 8
#     end
#     x += 1
#   end
#   return output
# end

# p two_sum([3, 2, 4], 6)

# def two_sum(nums, target)
#   checked = {}
#   nums.each_with_index do |value, i|
#     diff = target - value
#     if checked[diff]
#       return [checked[diff], i]
#     else
#       checked[value] = i
#     end
#   end
# end

# p two_sum([2, 7, 11, 15], 9)

# def is_palindrome(x)
#   string = x.to_s
#   palindrome = string.reverse!
#   int_palindrome = palindrome.to_i
#   if x == int_palindrome
#     return true
#   else
#     return false
#   end
# end

# p is_palindrome(1211212)

# def single_number(nums)
#   nums_count = {}
#   i = 0
#   while i < nums.length
#     num = nums[i]
#     if nums_count[num] == nil
#       nums_count[num] = 0
#     end
#     nums_count[num] += 1
#     i += 1
#   end
#   nums_count.each do |k, v|
#     if v == 1
#       return k
#     end
#   end
# end

# p single_number([4, 1, 2, 1, 2])

# def contains_duplicate(nums)
#   nums_counter = {}
#   nums.each do |num|
#     if nums_counter[num]
#       return true
#     else
#       nums_counter[num] = true
#     end
#   end
#   false
# end

# p contains_duplicate([6, 2, 3, 5, 20, 20])

# Length of last word

# Given a string s consisting of some words separated by some number of spaces, return the length of the last word in the string.

# A word is a maximal substring consisting of non-space characters only

# def length_of_last_word(s)
#   s = s.split(" ")
#   return s[-1].length
# end

# p length_of_last_word("Hello World")

# def merge_two_lists(l1, l2)
#   output = l1 + l2
#   output.sort
# end

# p merge_two_lists([1, 2, 4], [1, 3, 4])

# def rotate(nums)
#   i = 0
#   while i <= nums.length
#     if nums[i] == 0
#       nums.insert(-1, nums[i])
#       nums.delete_at(i)
#     end
#     i += 1
#   end
#   return nums
# end

# p rotate([0, 0, 1])

# def intersect(nums1, nums2)
#   new_array = []
#   intersection = {}
#   intersection2 = {}
#   i = 0
#   while i < nums1.length
#     if intersection[nums1[i]] == nil
#       intersection[nums1[i]] = 0
#     end
#     intersection[nums1[i]] += 1
#     i += 1
#   end
#   j = 0
#   while j < nums2.length
#     if intersection2[nums2[j]] == nil
#       intersection2[nums2[j]] = 0
#     end
#     intersection2[nums2[j]] += 1
#     j += 1
#   end
#   intersection.each do |k, v|
#     if intersection2[k]
#       if v == 1
#         new_array << k
#       end
#     end
#   end
#   p intersection
#   p intersection2
#   new_array
# end

# p intersect(([4, 9, 5]), ([9, 4, 9, 8, 4]))

# // Given an array, rotate the array to the right by k steps, where k is non-negative.

# reverse the array

# def rotate(nums, k)
#   nums.reverse!
#   nums.each_slice(3).map { |x| x.sort() }
# end

# p rotate([1, 2, 3, 4, 5, 6, 7], 3)

#  Remove Duplicates In Place problem.

# def remove_duplicates(nums)
#   #  create a variable for the current iteration in the array
#   i = 1
#   last_unique = nums[0]
#   count = 2
#   while i < nums.length
#     if last_unique == nums[i]
#       nums.insert(-1, nums.delete_at(nums.index(nums[i])))
#     else
#       last_unique = nums[i]
#       count += 1
#     end
#     i += 1
#   end
#   nums[0, count] = nums[0, count].sort!
#   return count

# create a variable for the last unique element.
# While Loop through.
# if unique element is equal to current iteration, push the current iteration to the end of the array.
# Else add one to the unique elements count, and change the unique element variable with the current iteration and keep going through.
# Return the count, and the array, it should have everything pushed to the end of it.

# end

# p remove_duplicates([1, 1, 2])
