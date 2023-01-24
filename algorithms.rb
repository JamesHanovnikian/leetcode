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


def arrange_coins(n)
    # While Loop 
    # i - subtract coins with i 
    # if i - coins_left < 1 
    # keep track of total staircases. 
    coins_left = n 
    if n == 1 
        return 1
    end
    i = 1
    flights_climbed = 0
    while coins_left - i > 0 
        coins_left = coins_left - i 
        flights_climbed += 1
        i += 1
    end
    flights_climbed
end