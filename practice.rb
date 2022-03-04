# The following array of hash tables represents a list of books. This will be the basis for Exercises #1 - 6.

# Write a function that accepts this type of hash table and returns an array containing the title of each book.

# def title(books)
#   titles_array = []
#   books.each do |book|
#     titles_array << book[:title]
#   end
#   return titles_array
# end

books = [
  { title: "Hop on Pop", author: "Dr. Seuss", pageCount: 17 },
  { title: "Mrs. Dalloway", author: "Virginia Woolf", pageCount: 566 },
  { title: "Harry Potter and the Sorcerer's Stone", author: "J. K. Rowling", pageCount: 321 },
  { title: "To the Lighthouse", author: "Virginia Woolf", pageCount: 288 },
  { title: "Anna Karenina", author: "Leo Tolstoy", pageCount: 825 },
  { title: "The Adventures of Tom Sawyer", author: "Mark Twain", pageCount: 390 },
  { title: "The Cat in the Hat", author: "Dr. Seuss", pageCount: 24 },
  { title: "War and Peace", author: "Leo Tolstoy", pageCount: 1821 },
  { title: "Green Eggs and Ham", author: "Dr. Seuss", pageCount: 22 },
  { title: "The Adventures of Huckleberry Finn", author: "Mark Twain", pageCount: 406 },
]

# p title(books)

# Expected Output:
# [
#   'Hop on Pop',
#   'Mrs. Dalloway',
#   "Harry Potter and the Sorcerer's Stone",
#   'To the Lighthouse',
#   'Anna Karenina',
#   'The Adventures of Tom Sawyer',
#   'The Cat in the Hat',
#   'War and Peace',
#   'Green Eggs and Ham',
#   'The Adventures of Huckleberry Finn'
# ]

# #2
# Write a function that accepts this type of hash table and returns an array of the books whose page counts are greater than 500.

# def long_books(books)
#   long_books = []
#   books.each do |book|
#     if book[:pageCount] > 500
#       long_books << book
#     end
#   end
#   long_books
# end

# p long_books(books)

# Expected Output:
# [
#   { title: 'Mrs. Dalloway', author: 'Virginia Woolf', pageCount: 566 },
#   { title: 'Anna Karenina', author: 'Leo Tolstoy', pageCount: 825 },
#   { title: 'War and Peace', author: 'Leo Tolstoy', pageCount: 1821 }
# ]

# #3

# Write a function that accepts this type of hash table and returns the total pages of all the books combined.

# def total_pages(books)
#   i = 0
#   sum = 0
#   while i < books.length
#     sum = sum + books[i][:pageCount]
#     i += 1
#   end
#   sum
# end

# p total_pages(books)

# Expected Output: 4680
# #4

# def seuss_book_pages(books)
#   sum = 0
#   books.each do |book|
#     if book[:author] == "Dr. Seuss"
#       sum = sum + book[:pageCount]
#     end
#   end
#   sum
# end

# p seuss_book_pages(books)

# Write a function that accepts this type of hash table and returns the total pages of all books written by Dr. Seuss.
# Expected Output: 63

# #5
# Write a function that accepts this type of hash table and returns the book with the highest page count.
# Expected Output: {title: "War and Peace", author: "Leo Tolstoy", pageCount: 1821}

# def highest_page(books)
#   highest_page_count = 0
#   books.each do |book|
#     if book[:pageCount] > highest_page_count
#       highest_page_count = book[:pageCount]
#     end
#   end
#   highest_page_count
# end

# p highest_page(books)

# #6
# Write a function that accepts this type of hash table and returns an array of strings that contain each book and author in the following format: "Hop on Pop by Dr. Seuss"
# Expected Output:
# [
#   'Hop on Pop by Dr. Seuss',
#   'Mrs. Dalloway by Virginia Woolf',
#   "Harry Potter and the Sorcerer's Stone by J. K. Rowling",
#   'To the Lighthouse by Virginia Woolf',
#   'Anna Karenina by Leo Tolstoy',
#   'The Adventures of Tom Sawyer by Mark Twain',
#   'The Cat in the Hat by Dr. Seuss',
#   'War and Peace by Leo Tolstoy',
#   'Green Eggs and Ham by Dr. Seuss',
#   'The Adventures of Huckleberry Finn by Mark Twain'
# ]

# #7
# Here's an array of strings, with each string representing a vote for a particular political candidate.

votes = ["Gutierrez", "Johnson", "Johnson", "Johnson", "Gutierrez", "Johnson", "Gutierrez"]

# def vote_hash(votes)
#   vote_hash_table = {}
#   votes.each do |vote|
#     if vote_hash_table[vote] == nil
#       vote_hash_table[vote] = 0
#     end
#     vote_hash_table[vote] += 1
#   end
#   highest_vote = 0

#   vote_hash_table.each do |k, v|
#     if v > highest_vote
#       highest_vote = v
#     end
#   end
#   vote_hash_table.key(highest_vote)
# end

# p vote_hash(votes)

# Write a function that returns a hash table containing the tally of votes for each candidate.
# Expected Output: {"Gutierrez": 3, "Johnson": 4}

# #8
# Extend the previous function to return the winner of the election (that is, the candidate with the most votes).
# Expected Output: "Johnson"
# #9
# Write a function that accepts a string and returns a count of how many of each character there are.
# Example Input: "banana"
# Output: {"b": 1, "a": 3, "n": 2}
#
#10
# Write a function that accepts two hash tables and returns whether they're equal. (In JavaScript, the === operator doesn't work on hash tables, so you'll need to use a loop.)

# Map, Select, and Reduce
# #1
# Write a function that accepts an array of numbers and returns an array with each number increased by 7.
# Example:
# Input: [1, 2, 3]
# Output: [8, 9, 10]

# #2
# Write a function that accepts an array of strings and returns an array with each string's length.
# Example:
# Input: ["hello", "goodbye"]
# Output: [5, 7]

# #3
# Write a function that accepts an array of numbers and returns an array with each number divided by 2.
# Example:
# Input: [1, 2, 3]
# Output: [0.5, 1.0, 1.5]

# #4
# Write a function that accepts an array of strings and returns an array with each string's first letter only.
# Example:
# Input: ["hello", "goodbye"]
# Output: ["h", "g"]

# #5
# Write a function that accepts an array of numbers and returns an array with each number converted into a string.
# Example:
# Input: [1, 2, 3]
# Output: ["1", "2", "3"]

# #6
# Write a function that accepts an array of numbers and returns a new array with only the even numbers.
# Example:
# Input: [2, 4, 5, 1, 8, 9, 7]
# Output: [2, 4, 8]

# #7
# Write a function that accepts an array of strings and returns an array with only the strings shorter than 4 letters.
# Example:
# Input: ["a", "man", "a", "plan", "a", "canal", "panama"]
# Output: ["a", "man", "a", "a"]

# #8
# Write a function that accepts an array of numbers and returns an array with only the numbers less than 10.

# def smaller_nums(nums)
#   nums_less_than_ten = []
#   nums.each do |num|
#     if num < 10
#       nums_less_than_ten << num
#     end
#   end
#   nums_less_than_ten
# end

# p smaller_nums([8, 23, 0, 44, 1980, 3])

# Example:
# Input: [8, 23, 0, 44, 1980, 3]
# Output: [8, 0, 3]

# public int majorityElement(int[] nums) {

#   int majorElem=nums[0];

#   int count=1;

#   for(int i=1;i<nums.length;i++){

#       if(count==0){
#           majorElem=nums[i];
#       }

#       if(nums[i]==majorElem){

#           count++;
#       }
#       else{
#           count--;
#       }
#   }

#   return majorElem;

# }
#1
# Write a function that accepts a hash table and returns an array containing all the keys and values as a simple list. Like this:
# Input: {"a": 1, "b": 2, "c": 3, "d": 4}
# Output: ["a", 1, "b", 2, "c", 3, "d", 4]

# def list(hash_table)
#   simple_list = []
#   hash_table.each do |k, v|
#     simple_list << k
#     simple_list << v
#   end
#   simple_list
# end

# p list({ "a": 1, "b": 2, "c": 3, "d": 4 })

# #2
# Write a function that accepts a hash table and returns an array of subarrays, where each subarray contains the key and value of each pair.
# Input: {"chair": 100, "book": 14, "sofa": 55}
# Output: [ ["chair", 100], ["book", 14], ["sofa", 55] ]

# def subarrays(hash_table)
#   output = []
#   hash_table.each do |item|
#     output << item
#   end
#   output
# end

# p subarrays({ "chair": 100, "book": 14, "sofa": 55 })

#3
# Let's do the inverse of the previous exercise. Write a function that accepts an array of subarrays, and return a hash table - in this format:
# Input: [ [1, 3], [8, 9], [2, 16] ]
# Output: becomes {1: 3, 8: 9, 2: 16}

# def return_hash(array)
#   output = {}
#   array.each do |k, v|
#     output[k] = v
#   end
#   output
# end

# p return_hash([[1, 3], [8, 9], [2, 16]])

#9
# Write a function that accepts a string and returns a hash table displaying the frequency of each character.

# Example:
# Input: "abcdbcabcdcbaz"
# Output: {"a": 3, "b": 4, "c", 4, "d": 2, "z": 1}

# def letter_frequency(string)
#   letter_frequency = {}
#   split_string = string.chars()
#   split_string.each do |letter|
#     if letter_frequency[letter] == nil
#       letter_frequency[letter] = 0
#     end
#     letter_frequency[letter] += 1
#   end
#   letter_frequency
# end

# p letter_frequency("abcdbcabcdcbaz")

#10
# Write a function that accepts a hash table of political candidates and their number of votes and return the candidate with the most votes.

# Example:
# Input: {"Gutierrez": 954, "Johnson": 1005, "Warren": 333, "Bloomberg": 5}
# Output: "Johnson"

# def highest_votes(hash)
#   highest_number = hash[:Gutierrez]
#   hash.each do |k, v|
#     if v > highest_number
#       highest_number = v
#     end
#   end
#   return hash.key(highest_number)
# end

# p highest_votes({ "Gutierrez": 954, "Johnson": 1005, "Warren": 333, "Bloomberg": 5 })

# #8
# Write a function that accepts a string and returns a hash table of how many of each character there are:
# Input: "bookkeeper"
# Output: {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}

# def letter_count(string)
#   split_string = string.chars()
#   letter_frequency = {}
#   split_string.each do |letter|
#     if letter_frequency[letter] == nil
#       letter_frequency[letter] = 0
#     end
#     letter_frequency[letter] += 1
#   end
#   letter_frequency
# end

# p letter_count("bookkeeper")

# #9
# Write a function that accepts an array of books and returns a hash table of how many times each author occurs:
# Input: [ {title: "Great Book", author: "John Smith"}, {title: "1984", author: "George Orwell"}, {title: "Awesome Book", author: "John Smith"} ]
# Output: {"John Smith" => 2, "George Orwell" => 1}

# def author_count(array)
#   hash_table = {}
#   array.each do |book|
#     author = book[:author]
#     if hash_table[author] == nil
#       hash_table[author] = 0
#     end
#     hash_table[author] += 1
#   end
#   hash_table
# end

# p author_count([{ title: "Great Book", author: "John Smith" }, { title: "1984", author: "George Orwell" }, { title: "Awesome Book", author: "John Smith" }])

# #10
# Write a function that accepts an array of books and returns a hash table where the author is the key, and an array of their book titles are the values
# Input: [ {title: "Great Book", author: "John Smith"}, {title: "1984", author: "George Orwell"}, {title: "Awesome Book", author: "John Smith"} ]
# Output: { "John Smith": ["Great Book, "Awesome Book"], "George Orwell": ["1984"] }

# p author([{ title: "Great Book", author: "John Smith" }, { title: "1984", author: "George Orwell" }, { title: "Awesome Book", author: "John Smith" }])

#7
# Write a function that accepts an array of numbers, and returns the first duplicate value.

# Example: [5, 7, 8, 9, 8, 2, 1]
# Output: 8 (since there are two 8’s in the array)

# def duplicate_value(array)
#   counter = {}
#   array.each do |num|
#     if counter[num] == nil
#       counter[num] = 0
#     else
#       return num
#     end
#   end
# end

# p duplicate_value([5, 7, 8, 9, 8, 2, 1])

# Supply
# Hashes
# (In these exercises, hashes are referred to as hash tables. In Ruby, they’re simply called hashes, and in JavaScript, they’re known as objects.

# #1
# The following hash table represents a particular person: { firstName: "Ada", lastName: "Lovelace", email: "ada.lovelace@email.com" }
# Write a function that accepts this type of hash table and returns the person's email address.

# def email(hash_table)
#   hash_table[:email]
# end

# p email({ firstName: "Ada", lastName: "Lovelace", email: "ada.lovelace@email.com" })

# Example:
# Input: { firstName: "Ada", lastName: "Lovelace", email: "ada.lovelace@email.com" }
# Output: "ada.lovelace@email.com"

# #2
# The following hash table represents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 }
# Write a function that accepts a hash table like this and adds 200 shirts to the "yellow" category. The function can then return the updated hash table.

# def shirts(hash_table)
#   hash_table[:yellow] = hash_table[:yellow] + 200
#   hash_table
# end

# p shirts({ red: 500, blue: 615, green: 484, yellow: 332 })


# #3
# The following hash table represents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 } (same as previous exercise)
# Write a function that accepts 3 parameters: The hash table, a string representing a brand new color, and a number of how many new color shirts there are. The function should then add this color and its number to the hash table, and then return the updated hash table.

# #4
# The following hash table rep  resents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 } (same as previous exercise)
# Write a function that accepts a hash table like this and returns the total number of shirts in inventory.
