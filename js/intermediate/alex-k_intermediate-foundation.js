// Sigma - Implement function sigma(num) that, given a number, returns the sum of all positive integers up to the given number (inclusive).  Ex: sigma(3) = 6 (or 1+2+3); sigma(5) = 15 (or 1+2+3+4+5).
function sigma(num) {
    var total = 0;
    for (let i = 0; i <= num; ++i) {
        total += i;
    }
    return total;
}
console.log(sigma(5))

// Factorial - Write a function factorial(num) that, given a number, returns the product (multiplication) of all positive integers from 1 up to the given number (inclusive).  For example, factorial(3) = 6 (or 1*2*3); factorial(5) = 120 (or 1*2*3*4*5).
function factorial(num) {
    var total = 1;
    for (let i = 1; i <= num; ++i) {
        total *= i;
    }
    return total;
}
console.log(factorial(5))

// Fibonacci - Create a function to generate Fibonacci numbers.  In this famous mathematical sequence, each number is the sum of the previous two, starting with values 0 and 1.  Your function should accept one argument, an index into the sequence (where 0 corresponds to the initial value, 4 corresponds to the value four later, etc).  Examples: fibonacci(0) = 0 (given), fibonacci(1) = 1 (given), fibonacci(2) = 1 (fib(0)+fib(1), or 0+1), fibonacci(3) = 2 (fib(1) + fib(2)3, or 1+1), fibonacci(4) = 3 (1+2), fibonacci(5) = 5 (2+3), fibonacci(6) = 8 (3+5), fibonacci(7) = 13 (5+8).  Do this without using recursion first.  If you don't know what a recursion is yet, don't worry as we'll be introducing this concept in Part 2 of this assignment.
function fibonacci(index) {
    var sequence = [0,1];
    for (let i = 1; i <= index; ++i) {
        sequence.push(sequence[i]+sequence[i-1]);
    }
    return sequence[index];
}
console.log(fibonacci(10))

// Array: Second-to-Last: Return the second-to-last element of an array. Given [42, true, 4, "Liam", 7], return "Liam".  If array is too short, return null.
function secondToLast(arr) {
    if (arr.length>1) {
        return arr[arr.length-2];
    }
    else return null;
}
console.log(secondToLast([42, true, 4, "Liam", 7]))
console.log(secondToLast(2))

// Array: Nth-to-Last: Return the element that is N-from-array's-end.  Given ([5,2,3,6,4,9,7],3), return 4.  If the array is too short, return null.
function nthToLast(arr, idx) {
    if (arr.length>idx-1) {
        return arr[arr.length-idx];
    }
    else return null;
}
console.log(nthToLast([5,2,3,6,4,9,7],3))
console.log(nthToLast(2))

// Array: Second-Largest: Return the second-largest element of an array. Given [42,1,4,3.14,7], return 7.  If the array is too short, return null.
function secondLargest(arr) {
    if (arr.length > 1) {
        newArr = arr.sort(function(a, b) { return a - b }); //need to tell .sort() that we're dealing with integers. otherwise, the array is read as a list of strings so 42 would get sorted before 7 because 4 is less than 7
        return arr[arr.length-2]
    }
    else return null;
}
console.log(secondLargest([42,1,4,3.14,7]))
console.log(secondLargest([47]))


// Double Trouble: Create a function that changes a given array to list each existing element twice, retaining original order.  Convert [4, "Ulysses", 42, false] to [4,4, "Ulysses", "Ulysses", 42, 42, false, false].
function dupes(arr) {
    var distance = 0;
    var arrLength = arr.length;
    for (let idx = arrLength-1; idx >= 0 ; --idx) {
        temp = arr[idx];
        arr[idx + (arrLength-distance)] = arr[idx];
        distance ++;
        arr[idx + (arrLength-distance)] = arr[idx];
    }
    return arr;
}
console.log(dupes([4, "Ulysses", 42, false]))


// FIBONACCI USING RECURSION
function fib(n){
    if (n<3){
        return 1;
    }
    return fib(n-1)+fib(n-2);
}
console.log(fib(9))