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


var climbStairs = function (n) {
  let a = 0;
  let b = 1;
  for (let i = 0; i < n; i++) {
    [a, b] = [b, a + b];
  }
  return b;
};



//  


