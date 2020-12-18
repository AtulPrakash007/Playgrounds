//: [Previous](@previous)

import Foundation

let name: String = "Atul"
print(name.count)
print(name.compactMap{$0})

func gjhkj() {
	for char in name.compactMap{$0} {
		if char == "u" {
			print("Yes")
			return
		}
	}
}
gjhkj()

// find the array difference
func minimumMoves(arr1: [Int], arr2: [Int]) -> Int {
	var totalSum = 0
	// Write your code here
	if arr1.count == arr2.count {
		for i in 0..<arr1.count {
			let firstArray = arr1[i].digits
			let secondArray = arr2[i].digits
			for j in 0..<firstArray.count {
				totalSum = totalSum + abs(firstArray[j] - secondArray[j])
			}
			
		}
	}
	return totalSum
}

extension BinaryInteger {
	var digits: [Int] {
		return String(describing: self).compactMap{Int(String($0))}
	}
}

///
struct nnnn {
	var name: String {
		willSet {
			print(name)
		}
	}
}

var ghjgh = nnnn(name: "Atu")
ghjgh.name = "Ta"

// reaching Points

func reachingPoints(x1: Int, y1: Int, x2: Int, y2: Int) -> String {
	if reachingPointsBool(x1: x1, y1: y1, x2: x2, y2: y2)  { return "Yes" }
	else {return "No" }
}

func reachingPointsBool(x1: Int, y1: Int, x2: Int, y2: Int) -> Bool {
	if x1 == x2 && y1 == y2 { return true }
	if x1 > x2 || y1 > y2 { return false }
	let val1 = reachingPointsBool(x1: x1, y1: (x1 + y1), x2: x2, y2: y2)
	let val2 = reachingPointsBool(x1: (x1 + y1), y1: y1, x2: x2, y2: y2)
	return val1 || val2
}

reachingPoints(x1: 1, y1: 2, x2: 2, y2: 1)
reachingPoints(x1: 1, y1: 4, x2: 5, y2: 9)

