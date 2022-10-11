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

# def max_profit(prices)
#   l = 0
#   r = 1
#   max_profit = 0
#   while r < prices.length
#       if prices[r] <= prices[l]
#           l = r
#           r += 1
#       else
#           if prices[r] - prices[l] > max_profit
#               max_profit = prices[r] - prices[l]
#           end
#           r += 1
#       end
#   end
#   max_profit
# end

# def common_prefix(array)
#   if array.length == 0
#     return ""
#   end
#   prefix = array[0]
#   i = 1
#   while i < array.length
#     while array[i].index(prefix) != 0
#       prefix = prefix.chop
#     end
#     i += 1
#   end
#   return prefix
# end

# def longest_common_prefix(strs)
#   #    Start on strs[0]
#   i = 0
#   output = ""
#   while i < strs[0].length
#       for s in strs do
#           if i == s.length || s[i] != strs[0][i]
#               return output
#           end
#       end
#       output = output + strs[0][i]
#       i += 1
#   end
#   output
# end

# def is_palindrome(s)
#   s.downcase!
#  s = s.gsub(/[([^0-9a-z]|[\s,]|)]/ ,"")
#   palindrome = ""
#   i = s.length-1
#   while i >= 0
#       palindrome = palindrome + s[i]
#       i = i -1
#   end
#   s
#   if palindrome == s
#       return true
#   else
#       return false
#   end
# end

# def valid_palindrome(s)
#   i = s.length - 1
#   checker = ""
#   while i >= 0
#     checker = checker + s[i]
#     i = i - 1
#   end
#   if checker == s
#     return true
#   end
#   l = 0
#   r = s.length - 1
#   while l < r
#     if s[l] != s[r]
#       skip_l = ""
#       skip_r = ""
#       i = 0
#       while i < s.length
#         if i != l
#           skip_l = skip_l + s[i]
#         end
#         if i != r
#           skip_r = skip_r + s[i]
#         end
#         i += 1
#       end
#       if skip_l == skip_l.reverse || skip_r == skip_r.reverse
#         return true
#       end
#     end
#     l += 1
#     r = r - 1
#   end
#   return false
# end

# def is_happy(n)
#   #   create a hash holding all of the n's
#   #     if n == 1 --> Return True!
#   hash = {}
#   while hash[n] == nil
#       hash[n] = true
#       string = n.to_s.split("")
#       sum = 0
#       integer = 0
#       string.each do |num|
#           integer = num.to_i
#           sum =  sum + (integer * integer)
#       end
#       n = sum

#       if n == 1
#           return true
#       end

#   end
#   return false
# end

# def search_insert(nums, target)
#     hash = {}
#     nums.each_with_index do |num, index|
#         if hash[target] == nil && num > target
#             return index
#         else
#             hash[num] = index
#         end
#     end
#     if hash[target] != nil
#         return hash[target]
#     else
#         return nums.length
#     end
# end

# def contains_nearby_duplicate(nums, k)
#   hash = {}
#   nums.each_with_index do |num, index|
#       if hash[num] != nil && (index -hash[num]) <= k
#           return true
#       else
#           hash[num] = index
#       end
#   end
#   return false
# end

# def roman_to_int(s)
#   roman_numerals = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000, "IV" => 4, "XL" => 40, "XC" => 90, "CD" => 400, "CM" => 900, "IX" => 9 }

# require 'set'
# def third_max(nums)
#      nums = nums.uniq
#      nums.sort!

#     if nums[nums.length-3] != nil
#         third_max = nums[nums.length-3]
#     else
#         return nums[nums.length-1]
#     end
# end

# def intersection(nums1, nums2)
#     intersection_array = []
#     hash = {}
#     nums1.each do |num|
#         hash[num] = "checked"
#     end
#     nums2 = nums2.uniq
#     nums2.each do |num|
#         if hash[num]
#             intersection_array << num
#         end
#     end
#     intersection_array
# end

# def add_digits(num)
#   s = num.to_s

#   if s.length == 1
#       return s.to_i
#   end

#   while s.length > 1
#       a = s.split("")
#       i = 0
#       sum = 0
#       while i < a.length
#           sum = sum + a[i].to_i
#           i += 1
#       end
#       s = sum.to_s
#   end
#  return s.to_i
# end

# def missing_number(nums)
#   n = nums.length
#   nums = nums.sort
#   hash = {}
#   range = (0..n).to_a
#   nums.each do |number|
#       hash[number] = true
#   end
#   range.each do |num|
#       if hash[num] == nil
#           return num
#       end
#   end
# end

# def find_the_difference(s, t)
#   s = s.split("")
#   hash = {}
#   s.each do |char|
#       if hash[char] == nil
#          hash[char] = 0
#       end
#       hash[char] += 1
#   end
#   t = t.split("")
# #     loop through the second array. If i've seen it, decrement by one.
#  t.each do |char|
#      if hash[char] == nil
#          return char
#      elsif hash[char] > 0
#          hash[char] = hash[char] -1
#      elsif hash[char] == 0
#           return char
#      end
#  end
# end

# def can_construct(ransom_note, magazine)
#   #     Create a hash map for magazine with the count.
#   #     Loop through ransom_note, decrement if I see the same letter from magazine.

#   hash = {}
#   i = 0
#   while i < magazine.length
#       char = magazine[i]
#       if hash[char] == nil
#           hash[char] = 0
#       end
#       hash[char] += 1
#       i += 1
#   end
#   j = 0
#   while j < ransom_note.length
#       char = ransom_note[j]
#       if hash[char] == nil
#           return false
#       elsif hash[char] > 0
#           hash[char] = hash[char] -1
#       elsif hash[char] == 0
#           return false
#       end
#       j += 1
#   end
#   return true
# end

# def is_subsequence(s, t)
#   subsequence = 0
#   t = t.split("")
#   i = 0
#   while i < t.length
#       if s[subsequence] == t[i]
#           subsequence += 1
#       end
#       i += 1
#   end
#   if subsequence == s.length
#       return true
#   else
#       return false
#   end
# end

# def distribute_candies(candy_type)
#   candies = candy_type.length / 2
#   different_candies = candy_type.uniq
#   if candies <= different_candies.length
#     return candies
#   elsif different_candies.length < candies
#     return different_candies.length
#   end
# end

# def cal_points(ops)
#   #     declare a score empty array?
#   #     add the score array up at the end.
#   score_array = []
#   i = 0
#   while i < ops.length
#     if ops[i].match?(/\d/)
#       score_array << ops[i]
#     elsif ops[i] == "+"
#       if score_array.length >= 2
#         sum = 0
#         sum = score_array[score_array.length - 1].to_i + score_array[score_array.length - 2].to_i
#         score_array << sum.to_s
#       end
#     elsif ops[i] == "D"
#       last = score_array[score_array.length - 1]
#       last = last.to_i
#       score_array << (last + last).to_s
#     elsif ops[i] == "C"
#       last = score_array[score_array.length - 1]
#       score_array.delete_at(score_array.length - 1)
#     end
#     i += 1
#   end
#   total = 0
#   score_array.each do |score|
#     total = total + score.to_i
#   end
#   total
# end

# def judge_circle(moves)
#   x = 0
#   y = 0
#   i = 0
#   while i < moves.length
#     if moves[i] == "U"
#       y += 1
#     elsif moves[i] == "D"
#       y = y - 1
#     elsif moves[i] == "L"
#       x = x - 1
#     elsif moves[i] == "R"
#       x += 1
#     end
#     i += 1
#   end

#   if x == 0 && y == 0
#     return true
#   else
#     return false
#   end
# end

# def sort_array_by_parity_ii(nums)
#   answer = [0] * nums.length

#   even = 0
#   odd = 1

#   nums.each do |num|
#       if num % 2 == 0
#           answer[even] = num
#           even += 2
#       else
#           answer[odd] = num
#           odd += 2
#       end
#   end
#    return answer
# end

# def sort_array_by_parity(nums)
#   sorted = [0] * nums.length

#   even = 0
#   odd = nums.length - 1
#   nums.each do |num|
#       if num % 2 == 0
#           sorted[even] = num
#           even += 1
#       else
#           sorted[odd] = num
#           odd = odd - 1
#       end
#   end
#   sorted
# end

# def uncommon_from_sentences(s1, s2)
#   uncommon = []
#   #   Make a hash of the s1 words.
#   possible_uncommon = {}
#   possible_uncommon2 = {}
#   words_1 = s1.split(" ")
#   words_2 = s2.split(" ")

#   words_1.each do |word|
#       if possible_uncommon[word] == nil
#           possible_uncommon[word] = 0
#       end
#       possible_uncommon[word] += 1
#   end
#  words_2.each do |word|
#      if possible_uncommon[word] == nil
#          possible_uncommon[word] = 0
#      end
#      possible_uncommon[word] += 1
#  end

#   possible_uncommon.each do |k, v|
#       if v == 1
#           uncommon << k
#       end
#   end
#   return uncommon
# end

# def reverse_only_letters(s)
#   answer = ""
#   reverse_string = ""

#   i = s.length - 1
#   while i >= 0
#     if s[i].match(/[A-Za-z]/)
#         reverse_string = reverse_string + s[i]
#     end
#     i = i - 1
#   end

#   pointer = 0
#   j = 0
#   while j < s.length
#       cur = s[j]
#       if cur.match(/[A-Za-z]/)
#           answer = answer + reverse_string[pointer]
#           pointer += 1
#       else
#           answer = answer + cur
#       end
#       j += 1
#   end
#   answer
# end

# def check_if_exist(arr)
#   i = 0
#   while i < arr.length
#       j = 0
#       while j < arr.length
#           if i != j
#               if arr[i] * 2 == arr[j]
#                   return true
#               end
#           end
#           j += 1
#       end
#       i += 1
#   end
#   false
# end

# def find_final_value(nums, original)
#   # find original, mult by 2 and reassign original
#   #  while loop going indefinitely. --> break if you can't find orginal!
#   #     return original
#   #

#   loop do
#       contains_original = "false"
#       product = 0
#       nums.each do |num|
#           if num == original
#               product =  num * 2
#               contains_original = "true"
#               break
#           else
#               contains_original = "false"
#           end
#       end
#       if contains_original == "false"
#           break
#       end
#       original = product
#   end
#   original
# end

# def sorted_squares(nums)
#   squared_array = nums.map {|num| num * num}
#   squared_array.sort

# end

# def can_be_typed_words(text, broken_letters)
#   broken_letters_hash = {}
#   i = 0
#   while i < broken_letters.length
#       broken_letter = broken_letters[i]
#       broken_letters_hash[broken_letter] = true
#       i += 1
#   end
#   count = 0
#   words = text.split(" ")
#   j = 0
#   while j < words.length
#       word_checker = true
#       h = 0
#       word = words[j]
#       while h < word.length
#           l = word[h]
#           if broken_letters_hash[l]
#               word_checker = false
#           end
#           h += 1
#       end
#       if word_checker == true
#           count += 1
#       end
#       j += 1
#   end
#   count
# end

# def find_relative_ranks(score)
#   #     Reverse sort?
#   #     make a new array
#   #     If statement

#       sorted_scores = score.sort.reverse
#       sorted_hash = {}
#       sorted_scores.each_with_index do |score, index|
#           sorted_hash[score] = index + 1
#       end
#       medals = []
#       score.each do |s|
#           if sorted_hash[s] == 1
#               medals << "Gold Medal"
#           elsif sorted_hash[s] == 2
#               medals << "Silver Medal"
#           elsif sorted_hash[s] == 3
#               medals << "Bronze Medal"
#           else
#               placement = sorted_hash[s]
#               medals << placement.to_s
#           end
#       end
#       medals
#   end

# def num_jewels_in_stones(jewels, stones)
#   jewels_hash = {}
#   jewels = jewels.split("")
#   jewels.each do |jewel|
#       jewels_hash[jewel] = true
#   end
#   jewel_counter = 0
#   stones = stones.split("")
#   stones.each do |stone|
#       if jewels_hash[stone] == true
#           jewel_counter += 1
#       end
#   end
#   jewel_counter
# end

# def is_monotonic(nums)
#   increasing = nums.sort
#   decreasing = nums.sort.reverse
#   if nums == increasing || nums == decreasing
#       return true
#   else
#       return false
#   end
# end

# def find_ocurrences(text, first, second)
#   #      two pointers? if first and second get the next word in the array.
#   x = 0
#   y = 1

#   third = []
#   text = text.split(" ")
#   while y < text.length
#     if text[x] == first && text[y] == second
#       if text[y + 1] != nil
#         third << text[y + 1]
#       end
#     end
#     x += 1
#     y += 1
#   end
#   return third
# end

# def common_chars(words)
#   check = {}
#    new_words = words[0].split("")
#    new_words.each do |word|
#        if check[word] == nil
#            check[word] = 0
#        end
#        check[word] += 1
#    end

#    words.each do |word|
#        newCheck = {}
#        i = 0
#        while i < word.length
#            letter = word[i]
#            if check[letter] != nil && check[letter] > 0
#                if newCheck[letter] == nil
#                    newCheck[letter] = 0
#                end
#                newCheck[letter] += 1
#                check[letter] = check[letter] - 1
#            end
#            i += 1
#        end

#        check = newCheck
#    end
#    output = []
#    check.each do |k, v|
#       if v == 1
#           output << k
#       elsif v > 1
#           v.times do
#               output << k
#           end
#       end
#    end
#    return output
# end

# def get_min_distance(nums, target, start)
#   hash = {}
#   answer = 0
#   if nums[start] == target
#       return 0
#   end
#   min_distance = 1000
#   nums.each_with_index do |num, index|
#       hash[num] = index
#       if num == target
#           diff = index - start
#           diff = diff.abs()
#           if diff < min_distance
#               min_distance = diff
#           end
#       end
#   end
#  min_distance
# end

# def busy_student(start_time, end_time, query_time)
#   #     Loop within a loop
#   #     if startTime[i] <= query_time && end_time[i] >= query_time
#   #  active_students = 0

#   active_students = 0
#   i = 0
#   while i < start_time.length
#     if start_time[i] <= query_time && end_time[i] >= query_time
#       active_students += 1
#     end
#     i += 1
#   end
#   active_students
# end

# def is_prefix_of_word(sentence, search_word)
#   #     counter for how many prefixes are happening?
#   #     Loop through the sentences.
#   counter = 0
#   sentence = sentence.split(" ")
#   i = 0
#   while i < sentence.length
#       word = sentence[i]
#       same_letters = ""
#       j = 0
#       while j < word.length
#           if word[j] == search_word[j]
#               same_letters = same_letters + word[j]
#           else
#               break
#           end
#           j += 1
#       end
#       if same_letters == search_word
#           return i + 1
#       end
#       i += 1
#   end
#   return -1
# end


def shortest_to_char(s, c)
  answer = Array.new(s.length)
  i = 0 
  indices = []
  while i < s.length 
      l = s[i]
      if l == c 
          indices << i 
      end
      i += 1
  end
  p indices
  i = 0 
  while i < answer.length 
      j = 0 
      current_lowest = 100
      while j < indices.length 
          indice = indices[j]
          sum = indice - i 
          if sum.abs() < current_lowest 
              current_lowest = sum.abs()
          end
          j += 1
      end
      answer[i] = current_lowest
      i += 1
  end
  answer
end
