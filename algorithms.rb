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

# def shortest_to_char(s, c)
#   answer = []
#   i = 0
#   indices = []
#   while i < s.length
#     l = s[i]
#     if l == c
#       indices << i
#     end
#     i += 1
#   end
#   p indices
#   i = 0
#   while i < s.length
#     j = 0
#     current_lowest = 1000000
#     while j < indices.length
#       indice = indices[j]
#       sum = indice - i
#       if sum.abs() < current_lowest
#         current_lowest = sum.abs()
#       end
#       j += 1
#     end
#     p indices
#     answer << current_lowest
#     i += 1
#   end
#   answer
# end

# def second_highest(s)
#   nums_array = []
#   s = s.split("")
#   s.each do |num|
#     if num.match?(/[0-9]/)
#       nums_array << num.to_i
#     end
#   end
#   nums_array.sort!
#   nums_array = nums_array.uniq
#   p nums_array

#   if nums_array.length <= 1
#     return -1
#   else
#     return nums_array[nums_array.length - 2]
#   end
# end

# def count_asterisks(s)
#   s = s.split("|")
#   i = 0
#   count = 0
#   while i < s.length
#       j = 0
#       word = s[i]
#       while j < word.length
#           if word[j] == "*"
#               count += 1
#           end
#           j += 1
#       end
#       i += 2
#   end
#   count
# end

# def check_string(s)
#   s = s.split("")
#   sorted = s.sort
#   if sorted == s
#       return true
#   else
#       return false
#   end
# end

# def most_frequent_even(nums)
#   #     Loop through the array, if even -->
#   #     hash to store counters
#   #     Loop through the hash, find the ones with the highest count.
#   #     Go with the lowest if it's even.

#   even_counter = {}
#   nums.each do |num|
#     if num % 2 == 0
#       if even_counter[num] == nil
#         even_counter[num] = 0
#       end
#       even_counter[num] += 1
#     end
#   end
#   if even_counter == {}
#     return -1
#   end
#   highest_count = 0
#   even_counter.each do |k, v|
#     if v > highest_count
#       highest_count = v
#     end
#   end
#   highest = []
#   even_counter.each do |k, v|
#     if v == highest_count
#       highest << k
#     end
#   end
#   highest.sort!
#   highest[0]
# end

# def find_subarrays(nums)
#   #     Two Pointers x and y
#   #     create a new subarray with x and y. find the sum.
#   #     if the sum
#       x = 0
#       y = 1
#       sums_hash = {}
#       while y < nums.length
#           sum = nums[x] + nums[y]
#           p sum
#           if sums_hash[sum]
#               return true
#           end
#           sums_hash[sum] = "checked"
#           x += 1
#           y = x + 1
#       end
#       false
#   end

# hash = [{ "name" => "James", "age" => "32" }, { "name" => "Abe", "age" => "29" }]

# hash.sort_by { |h| h.age }
# p hash

# def fair_candy_swap(alice_sizes, bob_sizes)
#   alice_sum = 0
#   bob_sum = 0

#   final_needed = (bob_sum + alice_sum) / 2
#   output = [] * 2

#   b_hash = {}

#   bob_sizes.each do |box|
#     bob_sum += box
#     b_hash[box] = "checked"
#   end

#   alice_sizes.each do |box|
#     alice_sum += box
#   end

#   diff = (bob_sum - alice_sum) / 2

#   i = 0
#   while i < alice_sizes.length
#     a = alice_sizes[i]
#     if b_hash[a + diff]
#       output[0] = a
#       output[1] = a + diff
#       return output
#     end
#     i += 1
#   end
#   return false
# end

# def reverse_str(s, k)

#   array = s.chars
#   array.each_slice(2*k).map {
#       |x|
#       if x.size == (2 * k)
#           x[0...k].reverse + x[k..-1]
#       elsif x.size < (2 * k) && x.size > k
#           x[0...k].reverse + x[k..-1]
#       elsif x.size >= (2 * k)
#           x[0...k].reverse + x[k..-1]
#       else
#           x.reverse
#       end
#   }.flatten.join
# end

# def merge_similar_items(items1, items2)
#     ret = []
#     counter = {}
#     items1.each do |value, weight|
#         if counter[value] == nil
#             counter[value] = weight
#         else
#             counter[value] = counter[value] + weight
#         end
#     end
#     items2.each do |value, weight|
#         if counter[value] == nil
#             counter[value] = weight
#         else
#             counter[value] = counter[value] + weight
#         end
#     end
#     counter.each do |k, v|
#        ret << [k, v]
#     end
#     ret = ret.sort {|a, b| a[0] <=> b[0]}
# end

# def intersect(nums1, nums2)
#   #     hash for nums1

#   output = []
#   counter_one = {}
#   nums1.each do |num|
#       if counter_one[num] == nil
#           counter_one[num] = 0
#       end
#       counter_one[num] += 1
#   end
#   nums2.each do |num|
#       if counter_one[num] != nil && counter_one[num] > 0
#           output << num
#           counter_one[num] = counter_one[num] - 1
#       end
#   end
#   output
# end

# Nim Game
# def can_win_nim(n)
#   return n % 4 != 0
# end

# def find_disappeared_numbers(nums)
#   n = nums.length
#   missing_nums = []
#   all_numbers = []
#   checker = {}

#   nums.each do |num|
#       checker[num] = "checked"
#   end
#   count = 1
#   n.times do
#       all_numbers << count
#       count += 1
#   end
#   all_numbers.each do |num|
#       if checker[num] == nil
#           missing_nums << num
#       end
#   end
#   missing_nums
# end

# def workbook(n, k, arr)
#   answer = 0
#   page = 1
#   # iterate through array.
#   arr.each do |prob|
#       index = 1
#       range = (1..prob + 1).to_a
#       while index < range.length
#           if index == page
#               answer += 1
#           end
#           if index == prob || index % k == 0
#               page += 1
#           end
#           index += 1
#       end
#   end
#   answer
# end

# def find_restaurant(list1, list2)
#   list1_hash = {}
#   list1.each_with_index do |item, index|
#     list1_hash[item] = index
#   end
#   i = 0
#   common_strings = {}
#   while i < list2.length
#     item = list2[i]
#     if list1_hash[item] != nil
#       sum = i + list1_hash[item]
#       common_strings[item] = sum
#     end
#     i += 1
#   end
#   common_array = []
#   common_strings.sort_by { |k, v| v }.to_h
#   lowest_value = 100
#   common_strings.each do |k, v|
#     if v < lowest_value
#       lowest_value = v
#     end
#   end
#   common_strings.select { |k, v| v == lowest_value }.map { |i| i[0] }
# end

# def last_stone_weight(stones)
#   while stones.length > 1
#     stones = stones.sort.reverse
#     if stones[0] == stones[1]
#       stones = stones.slice(2, stones.length - 1)
#     elsif stones[0] != stones[1]
#       new = stones[0] - stones[1]
#       stones = stones.slice(2, stones.length - 1)
#       stones << new
#     end
#   end
#   if stones == []
#     return 0
#   else
#     stones[0]
#   end
# end

# def greatest_letter(s)
#   hash = {}
#   array = []
#   alphabet_hash = {}
#   alpha = ('a'..'z').to_a.reverse
#   s = s.split("")
#   s.each do |l|
#       hash[l] = "checked"
#   end
#   i = 0
#   while i < alpha.length
#       letter = alpha[i]
#       downcased = letter.downcase
#       upcased = letter.upcase
#       if hash[downcased] != nil && hash[upcased] != nil
#           return letter.upcase
#       end
#       i += 1
#   end
#   return ""
# end

# def truncate_sentence(s, k)
#   #    Split the sentences into an array.
#   #     Make a new string
#   #     k.times do

#   s_array = s.split(" ")
#   s = ""
#   i = 0
#   while i < k
#     word = s_array[i]

#     s = s + word + " "
#     i += 1
#   end
#   s = s.strip
# end

# def check_record(s)
#   split = s.split("")
#   absence_counter = {}
#   split.each do |l|
#     if absence_counter[l] == nil
#       absence_counter[l] = 0
#     end
#     absence_counter[l] += 1
#   end
#   if s.include?("LLL") || absence_counter["A"] != nil && absence_counter["A"] >= 2
#     return false
#   else
#     return true
#   end
# end

# def minimumAbsoluteDifference(arr)
#   arr.sort!
#   x = 0
#   y = 1
#   min_distance = 100000000
#   while x < arr.length-1
#        y = x + 1
#        diff = arr[x]-arr[y]
#        if diff.abs < min_distance
#            min_distance = diff.abs
#        end
#        x += 1
#   end
#   min_distance
# end

# def largest_altitude(gain)
#   current_largest = 0
# #     check on each iteration.
# elevation = 0
# gain.each do |x|
#   elevation = elevation + x
#   if elevation > current_largest
#       current_largest = elevation
#   end
# end
# current_largest

# def lemonade_change(bills)
# hash to keep track of bills.
# o
#  Loop through the array.
# if it's five, add it to the hash

#   five = 0
#   ten = 0
#   bills.each do |num|
#       if num == 5
#           five += 1
#       elsif num == 10 && five != 0
#           ten = ten + 1
#           five = five - 1
#       elsif num == 20 && ten != 0 && five != 0
#           five = five - 1
#           ten = ten - 1
#       elsif num == 20 && five >= 3
#           five = five - 3
#       else
#           return false
#       end
#   end
#   true
# end

# def alternatingCharacters(s)
#   count = 0
#   x = 0
#   y = 1
#   s = s.split("")
#   while y < s.length
#       if s[x] == s[y]
#           count += 1
#       end
#       x += 1
#       y = x + 1
#   end
#   count
# end

# def height_checker(heights)
#   expected = heights.sort
#   output = 0
#   i = 0
#   while i < heights.length
#       if heights[i] != expected[i]
#           output += 1
#       end
#       i += 1
#   end
#   output
# end

# def time_required_to_buy(tickets, k)
#   seconds = 0
#   while true
#       i = 0
#       while i < tickets.length
#           if tickets[i] >= 1
#               seconds += 1
#               tickets[i] = tickets[i] - 1
#           end
#           if tickets[k] == 0
#               return seconds
#               break
#           end
#           i += 1
#       end
#   end
# end

# def top_k_frequent(nums, k)
#   # Hash Map to find the highest frequency numbers
#   # Loop through to find the highest value for each one.
#   # K
#   hash_map = {}
#   hash = {}
#   output = []
#   i = 0
#   while i < nums.length
#       if hash_map[nums[i]] == nil
#           hash_map[nums[i]] = 0
#       end
#       hash_map[nums[i]] += 1
#       i += 1
#   end

#   hash_map = hash_map.sort_by{|k,v| v}.reverse
#   hash_map.each do |k,v|
#       hash[k] = v
#   end
#   i = 0
#   k.times do
#       output << hash.keys[i]
#       i += 1
#   end
#   output
# end

# def is_ugly(n)
#   prime_factors = [2,3,5]
#   if n <= 0
#       return false
#   end
#   i = 0
#   while i < prime_factors.length

#       while n % prime_factors[i] == 0
#           n = n / prime_factors[i]
#       end

#       i += 1
#   end
#   if n == 1
#       return true
#   end
#   false
# end

# def first_palindrome(words)
#   words.each do |word|
#       if word.reverse == word
#           return word
#       end
#   end
#   return ""
# end

# def find_duplicates(nums)
#   output = []
#   num_counter = {}

#   nums.each do |num|
#       if num_counter[num] == nil
#           num_counter[num] = 0
#       end
#       num_counter[num] += 1
#       if num_counter[num] == 2
#           output << num
#       end
#   end
#   output
# end

# def target_indices(nums, target)
#   output = []
#   nums.sort!
#   i = 0
#   while i < nums.length
#       if nums[i] == target
#           output << i
#       end
#       i += 1
#   end
#   output
# end

# def max_ice_cream(costs, coins)
#   costs.sort!
#   bars_bought = 0
#   costs.each do |bar|
#     if coins == 0
#       return bars_bought
#     end
#     if coins >= bar
#       coins = coins - bar
#       bars_bought += 1
#     end
#   end
#   bars_bought
# end

# array = [1, 2, 3, 4]

# array.slice!(0, 1)

# p array

# def smallest_equal(nums)
#   indices = []

#   i = 0
#   while i < nums.length
#       current_num = nums[i]
#       if i % 10 == current_num
#           indices << i
#       end
#       i += 1
#   end
#   indices.sort!
#   if indices.length < 1
#       return -1
#   end
#   indices[0]
# end

# def is_valid(s)
# if s is odd, return false
# if first is a closing return false

#   if s.length % 2 != 0
#     return false
#   elsif s[0] == "}" || s[0] == ")" || s[0] == "]"
#     return false
#   elsif s[s.length - 1] == "(" || s[s.length - 1] == "[" || s[s.length - 1] == "{"
#     return false
#   end

#   pairs = { "(" => ")",
#            "[" => "]",
#            "{" => "}" }
#   stack = []

#   # While loop through the string.
#   # If it is an opening, push to the stack
#   #  Elsif pair[pop()] != s[i] return false
#   i = 0
#   while i < s.length
#     if s[i] == "(" || s[i] == "[" || s[i] == "{"
#       stack.push(s[i])
#     elsif pairs[stack.pop()] != s[i]
#       return false
#     end
#     i += 1
#   end
#   stack.length == 0
# end

# def reverse_prefix(word, ch)
#   #  While loop, find the first occurence. get the index
#   # Make a new string
#   # Reverse the string from 0 to index
#   # Keep going past the index.

#   new_string = ""
#   index = 0
#   found = false
#   while index < word.length
#       if ch == word[index]
#           found = true
#           break
#       end
#       index += 1
#   end
#   if found == false
#       return word
#   end
#   finish = index
#   while finish >= 0
#       new_string = new_string + word[finish]
#       finish = finish - 1
#   end
#   start = index + 1
#   while start < word.length
#       new_string = new_string + word[start]
#       start += 1
#   end
#   new_string
# end

# def arrange_coins(n)
#     # While Loop
#     # i - subtract coins with i
#     # if i - coins_left < 1
#     # keep track of total staircases.
#     coins_left = n
#     if n == 1
#         return 1
#     end
#     i = 1
#     flights_climbed = 0
#     while coins_left - i > 0
#         coins_left = coins_left - i
#         flights_climbed += 1
#         i += 1
#     end
#     flights_climbed
# end

# def prefix_count(words, pref)
#     # Loop through words.
#     # if first letter is not first letter of pref, next
#     # Go through each word and increment the answer if it is the same

#     i = 0
#     output = 0
#     while i < words.length
#         word = words[i]
#         j = 0
#         while j < word.length
#             if word[j] == pref[j]
#                 j += 1
#             else
#                 break
#             end
#             if j == pref.length
#                 output += 1
#             end
#         end
#         i += 1
#     end
#     output
# end

# def to_goat_latin(sentence)
#   # Goat Latin ALgo
#   s = sentence.split(" ")
#   # Create a new_string variable.
#   # Loop through the sentence, keep track of the index.
#   # if word[0] == "a, e, i, o, u" --> add "ma" to end.
#   new_string = ""
#   # i * "a""
#   i = 0
#   while i < s.length
#       word = s[i]
#       new_word = ""
#       word_count = i + 1
#       a = "a" * word_count
#       if word[0].downcase =~ /[aeiou]/
#           new_word = word + "ma" + a
#       else
#           first_l = word[0]
#           word.slice!(0)
#           new_word = word + first_l + "ma" + a
#       end
#       new_string = new_string + " " + new_word
#       i += 1
#   end
#   new_string.lstrip
# end

# def maximum69_number (num)
#   num = num.to_s
#   num = num.split("")
#   i = 0
#   while i < num.length
#       if num[i] == "6"
#           num[i] = "9"
#           break
#       else
#           i += 1
#       end
#   end
#   num.join.to_i
# end

# def most_common_word(paragraph, banned)
#   paragraph_words = paragraph.downcase.gsub(",","").delete("!?';.").  split
#   banned.each do |banned_word|
#       paragraph_words.delete(banned_word)
#   end
#   hash = {}
#   paragraph_words.each |word|
#       if hash[word] == nil
#           hash[word] = 0
#       end
#       hash[word] += 1
#   end
#   max_value = 0

#   hash.each do |k,v|
#       if v > max_value
#           max_value = v
#       end
#   end
#  return hash.key(max_value)
# end

#561 Array Partition

# Task: Of the minimum of each pair in the array, find the maximum sum of that.
# solution is to sort the array so that the lowest nums are paired together, getting the min from there. If you add them up you'll get max sum.
# Avoids having to get all possible pairs through array.

# def array_pair_sum(nums)
#   nums.sort!
#   x = 0
#   y = 1
#   sum = 0
#   while y < nums.length
#     array = []
#     array << nums[x]
#     array << nums[y]
#     sum = sum + array.min()
#     x += 2
#     y = x + 1
#   end
#   sum
# end

# def maximum_wealth(accounts)
#   i = 0
#   highest_bank_account = 0
#   while i < accounts.length
#       j = 0
#       sum = 0
#       account = accounts[i]
#       account.sum()
#       if account.sum() > highest_bank_account
#           highest_bank_account = account.sum()
#       end
#       i += 1
#   end
#   highest_bank_account
# end

# def bubble_sort(array)
#   sorted = false
#   unsorted_until_index = array.length - 1

#   while sorted == false
#     sorted = true
#     i = 0
#     while i < unsorted_until_index
#       if array[i] > array[i + 1]
#         array[i], array[i + 1] = array[i + 1], array[i]
#         sorted = false
#       end
#       i += 1
#     end
#     unsorted_until_index = unsorted_until_index - 1
#   end
#   array
# end

# p bubble_sort([65, 55, 45, 35, 25, 15, 10])

#  Selection Sort.

# def selection_sort(array)
#   i = 0

#   while i < array.length
#     j = i + 1
#     lowest_number_index = i
#     while j < array.length
#       if array[j] < array[lowest_number_index]
#         lowest_number_index = j
#       end
#       j += 1
#     end
#     if lowest_number_index != i
#       temp = array[i]
#       array[i] = array[lowest_number_index]
#       array[lowest_number_index] = temp
#     end
#     i += 1
#   end
#   array
# end

# p selection_sort([4, 2, 7, 1, 3])

# Insertion Sort

# def insertion_sort(array)
#   index = 1
#   while index < array.length
#     position = index
#     temp_value = array[index]
#     while position > 0 and array[position - 1] > temp_value
#       array[position] = array[position - 1]
#       position = position - 1
#     end
#     array[position] = temp_value
#     index += 1
#   end
#   array
# end

# p insertion_sort([4, 5, 2, 1, 9])

# Leetcode Unique Number of Occurences

# def unique_occurrences(arr)
#   # Input: [1, 1, 5]
#   # Output: true

#   # Input: [10, 5, 2]
#   # Output: False!

#   # occurences_hash = {}
#   # .each loop through the arr, and count occurences of each number using a hash map.
#   # .each loop through the hash map, and check to see if there's a repeated value.
#       # seperate hash map for checking the values {}
#       # if occurences_number[value] --> false
#       # Return true at the end of the problem

#       # O(N) to Loop through the original array
#       # O(N) to check if the frequences are unique or not

#       # O(N) performance

#   occurences_hash = {}
#   arr.each do |num|
#       if occurences_hash[num] == nil
#           occurences_hash[num] = 0
#       end
#       occurences_hash[num] +=  1
#   end

#   occurences_freq = {}

#   occurences_hash.each do |num, freq|
#       if occurences_freq[freq] == nil
#           occurences_freq[freq] = "checked"
#       elsif occurences_freq[freq] == "checked"
#           return false
#       end
#   end
#   true
# end

# def separate_digits(nums)
#   # Input: [12, 4, 10, 100]
#   # Output: [1, 2, 4, 1, 0, 1, 0, 0]

#   # .each Loop through nums array.
#   # split num by digit, and replace current num with the split array
#   #  .flatten to make it into one array again

#   i = 0
#   while i < nums.length
#       nums_array = nums[i].to_s.split("").map{|s| s.to_i}
#       nums[i] = nums_array
#       i += 1
#   end
#   nums.flatten
# end

# O(n)

# require "set"

# teams = [
#   { "id" => 47, "name" => "Ecuador" },
#   { "id" => 48, "name" => "Qatar" },
#   { "id" => 49, "name" => "Japan" },
#   { "id" => 50, "name" => "Greece" },
# ]

# matches = []
# played = {}

# i = 0
# while i < teams.length
#   j = 0
#   while j < teams.length
#     if i != j
#       team_one_id = teams[i]["id"]
#       team_two_id = teams[j]["id"]
#       if played[[team_one_id, team_two_id]] == nil && played[[team_two_id, team_one_id]] == nil
#         matches << [team_one_id, team_two_id]
#         played[[team_one_id, team_two_id]] = "played"
#       end
#     end
#     j += 1
#   end
#   i += 1
# end

# p matches

# def find_numbers(nums)
#   # Input: [13, 12, 1]
#   # Output: 2

#   # Input: [333, 444, 555, 1000]
#   # Output: 1

#   # Create a variable holding count = 0
#   # .each loop through the array.
#   # Convert the int to a string, split the string, count length of string. if string % 2 == 0 --> add one to count
#   # Return Count

#   even_nums = 0

#   nums.each do |num|
#     length = num.to_s.length
#     if length % 2 == 0
#       even_nums += 1
#     end
#   end
#   even_nums

#   # O(n) - Complexity. For n elements in the array, we go through each one to check if it's even or not.
# end

#  Count Operations

# def count_operations(num1, num2)

#   # Input: num1 = 2 num2 = 1

#   #  2 - 1 = 1
#   #  num1 = 1 num2 = 1
#   # Output:  2

#   # Input: num1 = 2 num2 = 3

#   #  num2 = 3-2 = 1 num1 = 2
#   #  num1 = 2- 1 = 1 num2 = 1
#   #  1 -1 = 0
#   # Output: 3

#   # While true loop, while num1 != 0 || num2 != 0
#   # if num1 >= num2 --> num1 = num1 - num2
#   # elsif num2 >= num1 --> num2 = num2 - num1
#   # Return operations.

#   operations = 0
#   while true
#     if num1 == 0 || num2 == 0
#       break
#     end
#     if num1 > num2
#       num1 = num1 - num2
#     elsif num2 > num1
#       num2 = num2 - num1
#     elsif num1 == num2
#       operations += 1
#       break
#     end
#     operations += 1
#   end
#   return operations
# end

# def are_occurrences_equal(s)
#   letter_count = {}
#   i = 0
#   while i < s.length
#       letter = s[i]
#       if letter_count[letter] == nil
#           letter_count[letter] = 0
#       end
#       letter_count[letter] += 1
#       i += 1
#   end

#   first = letter_count[s[0]]
#   letter_count.each do |l, c|
#       if c != first
#           return false
#       end
#   end
#   return true
# end

# def freq_alphabets(s)
#   # create a hash map of a-z numbered with k v pairs.
#   # create an empty s
#   # Split the string by using .split(/[s/#]/)
#   # While Loop through the string
#   # look up the # in this iteration and give out the value
#   # Return new string

#   hash_map = ("a".."z").each.with_index(1).to_h
#   new_string = ""
#   # Start from last index
#   # If there is NO # --> Loop up that digit,
#   # If there is a #, count the next two digits and look it up 
#   i = s.length - 1
#   while i >= 0
#     if s[i] == "#"
#       num = s[i - 2] + s[i - 1]
#       new_string = new_string + hash_map.key(num.to_i)
#       i = i - 3
#     else
#       num = s[i].to_i
#       new_string = new_string + hash_map.key(num)
#       i = i - 1
#     end
#   end
#   new_string.reverse
# end

# def sum_of_unique(nums)
#   checker = {}
#   unique_elements = []

#   i = 0
#   while i < nums.length
#     num = nums[i]
#     if checker[num] == nil
#       checker[num] = "unique"
#       i += 1
#       next
#     else
#       checker[num] = "not_unique"
#       i += 1
#     end
#   end
#   checker.each do |k, v|
#     if v == "unique"
#       unique_elements << k
#     end
#   end
#   unique_elements.sum
# end

# def dest_city(paths)
#   trip = Hash[paths]
#   trip.each do |dep, arriv|
#       if trip[arriv] == nil
#           return arriv
#       end

#   end
# end

# def merge_alternately(word1, word2)
#   # Merge Strings
#   # "abc" -- > "pqr"
#   # new_string = ""
#   # while loop

#   new_string = ""
#   loop_length = 0
#   if word1.length > word2.length
#       loop_length = word1.length
#   else
#       loop_length = word2.length
#   end

#   i = 0
#   while i < loop_length
#       if word1[i] != nil && word2[i] != nil
#           new_string = new_string + word1[i] + word2[i]

#       elsif word1[i] != nil && word2[i] == nil
#           new_string = new_string + word1[i]
#       elsif word2[i] != nil && word1[i] == nil
#           new_string = new_string + word2[i]
#       end
#      i += 1
#   end
#   new_string
# end

# def maximum_count(nums)
#   # Something to keep count of neg and pos
#   # Var holding neg and pos integers.
#   # find max from abs of pos and neg

#   # While loop

#   pos = 0
#   neg = 0
#   i = 0
#   while i < nums.length
#       if nums[i] < 0
#           neg += 1
#       elsif nums[i] > 0
#           pos += 1
#       end
#       i += 1
#   end
#   if pos > neg
#       return pos
#   else
#       return neg
#   end
# end

# def shuffle(nums, n)
#   # two-pointer?
#   # one var starts at 0 the other at nums.length - n
#   # make an empty array to hold the
#   # add one to each
#   # While i < n

#   i = 0
#   j = n

#   shuffled_array = []

#   while i < n
#       shuffled_array << nums[i]
#       shuffled_array << nums[j]
#       j += 1
#       i += 1
#   end
#   shuffled_array
# end

# def next_greatest_letter(letters, target)
#   # Smallest char that is lex greater than target.

#   # Hash of all letters set up with numbers
#   # hash = ("a".."z").map)
#   # Loop through letters, find the "smallest" character.
#   # if there are no characters greater than target --> return letters[0]
#   letters_hash = ('a'..'z').each.with_index(1).to_h

#   i = 0
#   letters.sort!
#   while i < letters.length
#       current_letter = letters[i]
#       if letters_hash[current_letter] > letters_hash[target]
#           return current_letter
#       end
#       i += 1
#   end
#   letters[0]
# end

# def string_matching(words)
#   output = []

#   # output where im holding which strings are substrings
#   # create a hash map of everything in words.
#   # if first letter

#   #  Loop within a loop ?
#   # while loop i
#   # while loop j
#   # if word[i][0] == word[j][0]
#   # if its the same increment by 1

#    i = 0
#    while i < words.length
#       j = 0
#       while j < words.length
#           if j != i
#               if words[i].length > words[j].length
#                   if words[i].include?(words[j])
#                       output << words[j]
#                   end
#               end
#           end
#           j += 1
#       end
#       i +=1
#   end
#   output.uniq
# end

# def max_ascending_sum(nums)
#   # two pointers, starts counting if higher.
#   # if y < x, put the sum in max?
#   # Loop through the array.
#   # Return highest sum

#   x = 0
#   y = 1

#   highest_sum = 0

#   sum = nums[0]
#   while y < nums.length

#       if nums[y] > nums[x]
#           sum = sum + nums[y]
#       else

#           if sum > highest_sum
#               highest_sum = sum
#           end
#           sum = nums[y]
#       end
#       x += 1
#       y = x + 1
#   end
#   if sum > highest_sum
#       highest_sum = sum
#   end
#   highest_sum
# end

# def count_balls(low_limit, high_limit)
#   # output is highest balls in one box.
#   # make a range lowLimit..highLimit
#   # Create a hash map holding the boxes?
#   current_highest_ball = 0
#   box_counts = {}
#   balls = (low_limit..high_limit).to_a
#   # while loop
#   i = 0
#   while i < balls.length
#       ball = balls[i]
#       box_num = ball.digits.sum
#       if box_counts[box_num] == nil
#           box_counts[box_num] = 0
#       end
#       box_counts[box_num] += 1

#       if box_counts[box_num] && box_counts[box_num] >            current_highest_ball
#           current_highest_ball = box_counts[box_num]
#       end
#       i += 1
#   end

#   # Each iteration, add the digits and then see if there is a box, add one count to the balls in it.
#   # Check the value, is it bigger than the current max balls in a given box?
#   current_highest_ball
# end

# def interpret(command)
#   # Need to loop through for sure
#   # Make a new empty string
#   # if current is "G" --> "G"
#   # ( --> check next char i + 2
#   # ( - check next character if "a" --> i + 3

#   translated = ""

# Solution --> just need to check what is the right of the ( and then increase index accordingly.

#   i = 0
#   while i < command.length
#       current = command[i]
#       if current == "G"
#           translated = translated + current
#           i += 1
#       elsif current == "("
#           if command[i+1] == ")"
#               translated = translated + "o"
#               i += 2
#           elsif command[i+1] == "a"
#               translated = translated + "al"
#               i += 4
#           end
#       end
#   end
#   translated
# end

# def garbage_collection(garbage, travel)
#   # Start backwards at last index. If you see certain type --> everything before that the truck has to go to.

#   latest_house = {}
#   i = garbage.length - 1
#   minutes = 0
#   while i >= 0
#       house = garbage[i]
#       j = house.length - 1
#       while j >= 0
#           type = house[j]
#           if latest_house[type] == nil
#               latest_house[type] = i
#           end
#           j = j - 1
#       end
#       i = i - 1
#   end
#   minutes = garbage.join.length
#  latest_house.each do |type, latest|
#       if latest >= travel.length
#           minutes = minutes + travel.sum
#       else
#           travel_mins = travel.slice(0, latest).sum
#           minutes = minutes + travel_mins
#       end
#  end
#  minutes
# end

# def halves_are_alike(s)
#   # Split the string into a and b
#   s.downcase!
#   a = s.slice(0, s.length/2)
#   b = s.slice(s.length/2, s.length)

#   vowels = {'a' => true, 'e' => true, 'i' => true , 'o' => true, 'u'  => true}

#   a_vowels = 0
#   b_vowels = 0

#   i = 0
#   while i < a.length
#       if vowels[a[i]] != nil
#           a_vowels += 1
#       end
#       if vowels[b[i]] != nil
#           b_vowels += 1
#       end
#       i += 1
#   end

#   if a_vowels == b_vowels
#       return true
#   else
#       return false
#   end
# end

# def find_difference(nums1, nums2)
#   # output = two arrays, one is distinct nums in nums1 NOT in 2
#   # create a hash for nums2
#   # Loop through nums1 if the num is NOT in the hash, add to empty array
#   nums1_hash = {}
#   nums2_hash = {}
#   nums1_distinct = []
#   nums2_distinct = []
#   i = 0
#   while i < nums2.length
#       num = nums2[i]
#       if nums2_hash[num] == nil
#           nums2_hash[num] = "checked"
#       end
#       i += 1
#   end

#   i = 0
#   while i < nums1.length
#       num = nums1[i]
#       nums1_hash[num] = "checked"
#       if nums2_hash[num] == nil
#           nums1_distinct << num
#       end
#       i += 1
#   end
#   i = 0
#   while i < nums2.length
#       num = nums2[i]
#       if nums1_hash[num] == nil
#           nums2_distinct << num
#       end
#       i += 1
#   end

#   [nums1_distinct.uniq, nums2_distinct.uniq]
# end

# def num_rescue_boats(people, limit)
#   people.sort!
#   boats_filled = 0
#   x = 0
#   y = people.length-1

#   while x <= y
#       heaviest = people[y]
#       lightest = people[x]
#       boats_filled += 1
#       if heaviest + lightest <= limit
#            x += 1
#       end
#      y = y - 1
#   end
#  boats_filled
# end

# def pivot_array(nums, pivot)
#   less_than = []
#   greater_than = []
#   i = 0
#   pivot_nums = 0
#   while i < nums.length
#       num = nums[i]
#       if num < pivot
#           less_than << num
#       elsif num > pivot
#           greater_than << num
#       elsif num == pivot
#           pivot_nums += 1
#       end
#       i += 1
#   end
#   pivot_nums.times do
#       less_than << pivot
#   end
#   less_than + greater_than
# end

# def vowel_strings(words, left, right)
#   vowels = {"a" => "vowel", "e" => "vowel", "i" => "vowel", "o" => "vowel", "u" => "vowel"}

#   vowel_words = 0
#   # iterate thru words array.
#   # check if last and first are a vowel, if they ARE then add one to vowel_words.

#   i = 0
#   while i < words.length
#       word = words[i]
#       if vowels[word[0]] != nil && vowels[word[word.length-1]] != nil
#           vowel_words += 1
#       end
#       i += 1
#   end
#   vowel_words
# end

# def count_distinct_integers(nums)
#   # Loop through nums, reverse the digit, then .push to nums.
#   # while i < starting_nums.length
#   # .char
#   # .reverse
#   # .uniq at the end and then throw a count too.

#   starting_num_length = nums
#   i = 0
#   reversed_array = []
#   while i < starting_num_length.length
#       num = starting_num_length[i]
#       reversed_array << num.to_s.reverse.to_i
#       i += 1
#   end
#   (nums + reversed_array).uniq.count
# end

# Recursive Code.
# Recursively Recurse with Recursion.

#  Base Case = the case/scenario where the function breaks from recursion, or you get the number you want.
# 1. Identify what the base case is.
# 2. Walk through the function assuming it's dealing with the case.
# 3. Then walk through the function with the next example.
# 4.

# def countdown(number)
#   puts number
#   if number == 0
#     return
#   else
#     countdown(number - 1)
#   end
# end

# puts countdown(10)

# def find_gcd(nums)
#   # FInd Greatest Common Denm

#   current_smallest = nums[0]
#   current_largest = nums[1]
#   i = 0
#   while i < nums.length
#     num = nums[i]
#     if num > current_largest
#       current_largest = num
#     elsif num < current_smallest
#       current_smallest = num
#     end
#     i += 1
#   end

#   poss_divisor = current_smallest

#   while poss_divisor >= 0
#     if current_smallest % poss_divisor == 0 && current_largest % poss_divisor == 0
#       return poss_divisor
#     end
#     poss_divisor = poss_divisor - 1
#   end
# end

# Two out of three solution
# find the uniq nums of each array, add them to one array, tally aka create a hash with count of each, from that select the one that has value of more than two and then take the keys from that.

# def two_out_of_three(nums1, nums2, nums3)
#   (nums1.uniq + nums2.uniq + nums3.uniq).tally.select { |k, v| v >= 2 }.keys
# end

# def duplicate_zeros(arr)
#   i = 0
#   max_length = arr.length
#   while i < max_length
#     if arr[i] == 0
#       arr.insert(i, 0)
#       i += 2
#     else
#       i += 1
#     end
#   end
#   arr.slice!(max_length, arr.length)
# end

# Remove Elements in Place algo.

# def remove_element(nums, val)

#   i = 0
#   n = nums.length

#   while i < n
#        if nums[i] == val
#            nums[i] = nums[n-1]
#            n = n - 1
#        else
#            i += 1
#        end
#    end
#    n
# end

# Sort the People.

# def sort_people(names, heights)
#   name_heights = {}

#   i = 0
#   while i < names.length
#       name_heights[heights[i]] = names[i]
#       i += 1
#   end
#   output = []
#   name_heights.sort_by { |height, name| height }.reverse.each do |h, n|
#       output << n
#   end
#   output
# end

# def watering_plants(plants, capacity)
#   steps = 0
#   i = 0
#   current_capacity = capacity
#   while i < plants.length
#       plant = plants[i]
#       if current_capacity >= plant
#           current_capacity = current_capacity - plant
#           steps += 1
#       else
#           steps += i
#           steps += i + 1
#           current_capacity = capacity
#           current_capacity = current_capacity - plant
#       end
#       i += 1
#   end
#   steps
# end

# def find_and_replace_pattern(words, pattern)
#   # Map? Looks like you can do some sort of Map.
#   # Need to loop through words array.
#   # check each letter words[i] to see if

#   # create a hash map of pattern.

#   # For the pattern, create hash map, if it doesn't exist in the hash map, then
#   # add one to the value so it's unique?'
#   # Loop through words, each letter needs to be same thing. if it matches
#   # {a => 1 b => 2 c => 3} break if it doesn't match with pattern_hash
#   # If we get to last iteration, output << words[i]

#   output = []
#   pattern_hash = {}
#   index = 1
#   pattern_array = []
#   pattern.chars().each do |l|
#     if pattern_hash[l] == nil
#       pattern_hash[l] = index
#       pattern_array << index
#       index += 1
#     elsif pattern_hash[l] != nil
#       pattern_array << pattern_hash[l]
#       index += 1
#     end
#   end
#   words.each do |word|
#     word_hash = {}
#     word_array = []
#     i = 0
#     while i < word.length
#       letter = word[i]
#       if word_hash[letter] == nil
#         word_hash[letter] = i + 1
#         word_array << i + 1
#       elsif word_hash[letter] != nil
#         word_array << word_hash[letter]
#       end
#       i += 1
#     end
#     if word_array == pattern_array
#       output << word
#     end
#   end
#   output
# end

# def is_same_after_reversals(num)
#   string_nums = num.to_s
#   if string_nums[string_nums.length - 1] != "0"
#     return true
#   elsif num == 0
#     return true
#   else
#     return false
#   end
# end

# def count_pairs(nums, k)
#   nums_hash = {}
#   pairs = 0

#   nums.each_with_index do |num, index|
#     if nums_hash[num] == nil
#       nums_hash[num] = []
#       nums_hash[num] << index
#     else
#       nums_hash[num].each do |x|
#         if (x * index) % k == 0
#           pairs += 1
#         end
#       end
#       nums_hash[num] << index
#     end
#   end
#   pairs
# end

# def rearrange_array(nums)
#   # Divide the two arrays in Nums.
#   # create new array.
#   # alternate between to the two arrays pushing into.
#   i = 0
#   positive = []
#   negative = []
#   mod_array = []
#   while i < nums.length
#     if nums[i] > 0
#       positive << nums[i]
#     else
#       negative << nums[i]
#     end
#     i += 1
#   end

#   i = 0
#   while i < positive.length
#     mod_array << positive[i]
#     mod_array << negative[i]
#     i += 1
#   end
#   mod_array
# end

# def rearrange_array(nums)
#   nums = nums.partition { |num| num > 0 }
#   mod_array = []
#   i = 0
#   while i < nums[0].length
#      mod_array << nums[0][i]
#      mod_array << nums[1][i]
#      i += 1
#   end
#   mod_array
# en

# def balanced_string_split(s)
#   i = 0
#   balance = 0
#   balanced_strings = 0
#    while i < s.length
#        current = s[i]
#        if current == "R"
#            balance = balance - 1
#        elsif current == "L"
#            balance += 1
#        end
#        if balance == 0
#            balanced_strings += 1
#        end
#        i += 1
#    end
#    balanced_strings
# end

# def count_points(rings)
#   # Rods that have all three colors on them.
#   # create a hash map. rod => colors colors is an array.
#   # Loop through each pair in the array. ==> two variables?
#   #if hash[rod] has all colors add one to output.

#   output = 0
#   hash = {}

#   i = 0
#   j = i + 1
#   while j < rings.length
#       color = rings[i]
#       rod = rings[j]
#       if hash[rod] == nil
#           hash[rod] = []
#       end
#       hash[rod] << color
#       i += 2
#       j = i + 1
#   end
#  hash.each do |rod, color|
#   if color.uniq.sort == ["B", "G", "R"]
#       output += 1
#   end
#  end
#  output
# end

#  def create_target_array(nums, index)
#     i = 0
#     target_array = []
#     while i < nums.length
#         if target_array.length == 0
#             target_array << nums[i]
#         else
#             target_array.insert(index[i], nums[i])
#         end

#         i += 1
#     end
#     target_array
# end

# def maximum_units(box_types, truck_size)
#   #  Find the maximum number of units that can be put on both.

#   box_types = box_types.sort_by { |x| x[1] }.reverse
#   total_boxes = 0
#   total_units = 0
#   box_types.each do |boxes, unit_size|
#     boxes.times do
#       if total_boxes == truck_size
#         break
#       end
#       if total_boxes <= truck_size
#         total_boxes += 1
#         total_units = total_units + unit_size
#       else
#         break
#       end
#     end
#   end
#   total_units
# end

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

# cheking

# def max_coins(piles)
#   piles.sort!
#   second_max_i = piles.length - 2
#   coins_collected = 0
#   while second_max_i >= piles.length / 3
#     coins_collected = coins_collected += piles[second_max_i]
#     second_max_i = second_max_i - 2
#   end
#   coins_collected
# end

# def reverse_words(s)
#   new_s = ""
#   s.split(" ").map { |word| word.reverse }.each do |word|
#     new_s = new_s + " " + word
#   end
#   new_s.lstrip
# end

# def restore_string(s, indices)
#   a = Array.new(s.length)
#   i = 0
#   while i < indices.length
#     a[indices[i]] = s[i]
#     i += 1
#   end
#   a.join
# end

def number_of_lines(widths, s)
  # each line 100
  # loop through widths, once you get to
  lines = 1
  current_line = 0
  # if current_lines > 100
  # lines += 1 && current_lines. =0

  i = 0
  while i < s.length
    l = s[i]
    width = widths[i]
    if current_line + width <= 100
      current_line = current_line + width
      i += 1
    else
      lines += 1
      current_line = 0
    end
  end
  [lines, current_line]
end
