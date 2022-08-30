// Map, Select, and Reduce
// #1
// Write a function that accepts an array of numbers and returns an array with each number increased by 7.
// Example:
// Input: [1, 2, 3]
// Output: [8, 9, 10]


// function plusSeven(array) {
//   let newArray = [];
//   array.forEach(function (num) {
//     newArray.push(num + 7);
//   });
//   return newArray;

// }
// console.log(plusSeven([1, 2, 3]));




// #2


// Write a function that accepts an array of strings and returns an array with each string's length.
// Example:
// Input: ["hello", "goodbye"]
// Output: [5, 7]


// function stringLength(strings) {
//   let newArray = [];
//   strings.forEach(string => {
//     newArray.push(string.length)
//   });
//   return newArray;
// }

// console.log(stringLength(["hello", "goodbye"]));

// #3
// Write a function that accepts an array of numbers and returns an array with each number divided by 2.
// Example:
// Input: [1, 2, 3]
// Output: [0.5, 1.0, 1.5]


// function divide(array) {
//   let newArray = [];
//   array.forEach(num => {
//     newArray.push(num / 2.00);
//   });
//   return newArray;
// }

// console.log(divide([1, 2, 3]));

// #4

// Write a function that accepts an array of strings and returns an array with each string's first letter only.
// Example:
// Input: ["hello", "goodbye"]
// Output: ["h", "g"]

// function firstLetter(strings) {
//   let newArray = [];
//   strings.forEach(string => {
//     newArray.push(string[0]);
//   });
//   return newArray;
// }

// console.log(firstLetter(["hello", "goodbye"]));
// #5


// Write a function that accepts an array of numbers and returns an array with each number converted into a string.
// Example:
// Input: [1, 2, 3]
// Output: ["1", "2", "3"]


// function numToString(nums) {
//   let newArray = [];
//   nums.forEach(num => {
//     newArray.push(num.toString());
//   });
//   return newArray;
// }

// console.log(numToString([1, 2, 3]));



// #6
// Write a function that accepts an array of numbers and returns a new array with only the even numbers.
// Example:
// Input: [2, 4, 5, 1, 8, 9, 7]
// Output: [2, 4, 8]


// function onlyEven(array) {
//   let newArray = [];
//   array.forEach(num => {
//     if (num % 2 === 0) {
//       newArray.push(num);
//     }
//   });
//   return newArray;
// }
// console.log(onlyEven([2, 4, 5, 1, 8, 9, 7]));


// #7
// Write a function that accepts an array of strings and returns an array with only the strings shorter than 4 letters.
// Example:
// Input: ["a", "man", "a", "plan", "a", "canal", "panama"]
// Output: ["a", "man", "a", "a"]



// #8
// Write a function that accepts an array of numbers and returns an array with only the numbers less than 10.
// Example:
// Input: [8, 23, 0, 44, 1980, 3]
// Output: [8, 0, 3]

// #9
// Write a function that accepts an array of strings and returns an array with only the strings that don't start with the letter "b".
// Example:
// Input: ["big", "little", "good", "bad"]
// Output: ["little", "good"]

// #10
// Write a function that accepts an array of numbers and returns an array with only the odd numbers.
// Example:
// Input: [2, 4, 5, 1, 8, 9, 7]
// Output: [5, 1, 9, 7]

// #11
// Write a function that accepts an array of numbers and returns the sum of all the numbers.
// Example:
// Input: [5, 10, 8, 3]
// Output: 26

// #12
// Write a function that accepts an array of numbers and returns the smallest number.
// Example:
// Input: [5, 3, 8, 10]
// Output: 3

// #13
// Write a function that accepts an array of strings and returns the total length of all the strings.
// Example:
// Input: ["volleyball", "basketball", "badminton"]
// Output: 29

// #14
// Write a function that accepts an array of strings and returns a single string that combines all the individual strings separated by dashes.
// Example:
// Input: ["volleyball", "basketball", "badminton"]
// Output: "volleyball-basketball-badminton"

// #15
// Write a function that accepts an array of numbers and returns the greatest number.
// Example:
// Input: [5, 10, 8, 3]
// Output: 10


// var climbStairs = function (n) {
//   let a = 0;
//   let b = 1;
//   for (let i = 0; i < n; i++) {
//     [a, b] = [b, a + b];
//   }
//   return b;
// };


// #1
// Write a function that accepts a hash table and returns an array containing all the keys and values as a simple list. Like this:
// Input: {"a": 1, "b": 2, "c": 3, "d": 4}
// Output: ["a", 1, "b", 2, "c", 3, "d", 4]

// function arrayList(hash) {
//   let arrayList = [];
//   for (let key in hash) {
//     arrayList.push(key);
//     arrayList.push(hash[key]);
//   }
//   return arrayList;
// }
// console.log(arrayList({ "a": 1, "b": 2, "c": 3, "d": 4 }));


// #2


// Write a function that accepts a hash table and returns an array of subarrays, where each subarray contains the key and value of each pair.
// Input: {"chair": 100, "book": 14, "sofa": 55}
// Output: [ ["chair", 100], ["book", 14], ["sofa", 55] ]


// function subarray(hash) {
//   let newArray = [];
//   for (let key in hash) {
//     newArray.push([key, hash[key]]);
//   }
//   return newArray;
// }

// console.log(subarray({ "chair": 100, "book": 14, "sofa": 55 }));


// #3
// Let's do the inverse of the previous exercise. Write a function that accepts an array of subarrays, and return a hash table - in this format:
// Input: [ [1, 3], [8, 9], [2, 16] ]
// Output: becomes {1: 3, 8: 9, 2: 16}

// function hashTable(array) {
//   let hashTable = {};
//   array.forEach(subarray => {
//     let key = subarray[0];
//     let value = subarray[1];
//     hashTable[key] = value;
//   });
//   return hashTable;
// }

// console.log(hashTable([[1, 3], [8, 9], [2, 16]]));


// #4
// Write a function that accepts a hash table and returns a new hash table with the keys and values flipped:
// Input: {"a": 1, "b": 2, "c": 3}
// Output: {1: "a", 2: "b", 3: "c"}

// function flip(hashTable) {
//   let newHash = {};
//   for (let key in hashTable) {
//     newHash[hashTable[key]] = key;
//   }
//   return newHash;
// }
// console.log(flip({ "a": 1, "b": 2, "c": 3 }));


// #5
// Write a function that accepts an array of strings and returns a hash table containing the number of times each string occurs:
// Input: ["do", "or", "do", "not"]
// Output: {"do": 2, "or": 1, "not": 1}

// #6
// Write a function that accepts an array of products and returns a hash table where the id numbers are the keys, and the products hash tables are the values.
// Input: [ {id: 1, product: "table", price: 32}, {id: 2, product: "chair", price: 12}, {id: 3, product: "sofa", price: 100} ]
// Output: {1: {id: 1, product: "table", price: 32}, 2: {id: 2, product: "chair", price: 12}, 3: {id: 2, product: "sofa", price: 100} }

// #7
// Write a function that accepts TWO parameters, an array and a number. The function should return a hash table, where each item in the array is a key, and the number is a value.
// Inputs: ["a", "e", "i", "o", "u"], 1
// Output: {"a": 1, "e": 1, "i": 1, "o": 1, "u": 1}

// #8
// Write a function that accepts a string and returns a hash table of how many of each character there are:
// Input: "bookkeeper"
// Output: {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}

// #9
// Write a function that accepts an array of books and returns a hash table of how many times each author occurs:
// Input: [ {title: "Great Book", author: "John Smith"}, {title: "1984", author: "George Orwell"}, {title: "Awesome Book", author: "John Smith"} ]
// Output: {"John Smith" => 2, "George Orwell" => 1}

// function authorCounter(array) {
//   let newHash = {};
//   array.forEach(book => {
//     if (newHash[book["author"]] === null) {
//       newHash[book["author"]] = 0;
//     }
//     newHash[book["author"]]++;
//   });
//   return newHash;
// }
// console.log(authorCounter([{ title: "Great Book", author: "John Smith" }, { title: "1984", author: "George Orwell" }, { title: "Awesome Book", author: "John Smith" }]));

// Given an array, rotate the array to the right by k steps, where k is non-negative.


// def rotate(nums, k)


// end

