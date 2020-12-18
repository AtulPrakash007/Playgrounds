import UIKit

var str = "Hello, playground"
print(str)

let arr1 = [9,1,6,1]
let arr1s1 = [1,1]
let arr1s2 = [1,2]
let arr1s3 = [1,3]
let arr2 = [3,2,5,6,2,6]
let arr2s1 = [1,2]
let arr2s2 = [1,5]
let arr2s3 = [2,6]
let arr2s4 = [6,6]
let arr2s5 = [5,5]
let arr2s6 = [5,5]
let arr2s7 = [3,5]

func subArraySum(from: Int, to: Int, array: [Int]) -> Int {
    let range: ClosedRange = from...to
    let subArray = array[range]
    return subArray.reduce(0, +)
}

let sortedArr1 = arr1.sorted(by: >)
let sortedArr2 = arr2.sorted(by: >)

//1
let subrangeArr1 = [arr1s1, arr1s2, arr1s3]
var aliceSum = 0
var bobSum = 0
for arr in subrangeArr1 {
    aliceSum += subArraySum(from: arr[0]-1, to: arr[1]-1, array: arr1)
}

for arr in subrangeArr1 {
    bobSum += subArraySum(from: arr[0]-1, to: arr[1]-1, array: sortedArr1)
}

print(bobSum-aliceSum)
//2
let subrangeArr2 = [arr2s1, arr2s2, arr2s3, arr2s4, arr2s5, arr2s6, arr2s7]
aliceSum = 0
bobSum = 0
for arr in subrangeArr2 {
    aliceSum += subArraySum(from: arr[0]-1, to: arr[1]-1, array: arr2)
} 

for arr in subrangeArr2 {
    bobSum += subArraySum(from: arr[0]-1, to: arr[1]-1, array: sortedArr2)
}

print(bobSum-aliceSum)
