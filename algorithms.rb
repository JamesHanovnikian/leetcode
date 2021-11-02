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

def two_sum(nums, target)
  x = 0
  y = 0
  output = []
  while x < nums.length
    while y < nums.length
      if x != y # 1 # 4 # 7
        if nums[x] + nums[y] == target # 8
          output << x
          output << y
        end                             # 9
      end                               # 10
      y += 1     # 2 # 5                # 11
    end         # 3 # 6
    x += 1
  end
  return output
end

p two_sum([3, 2, 4], 6)

# 1. x = 0, y = 0
# 2. x = 0, y = 1
# 3. ''
# 4. ''
# 5. x = 0, y = 2
# 6. ''
# 7.
# 8.
# 9.
# 10.
# 11.
# 12.
# 13.
# 14.
# 15.
