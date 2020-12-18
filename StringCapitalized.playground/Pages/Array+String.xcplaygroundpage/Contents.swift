//: [Previous](@previous)

import Foundation

func anoSolution( _ N : Int) -> Int {
	var numArray = Array(String(N))
	if numArray.contains("-") {
		numArray.remove(at: 0)
		var appendArray = [String]()
		for i in 0...numArray.count - 1 {
			numArray.insert("5", at: i)
			let addedNUmber = String(numArray)
			numArray.remove(at: i)
			appendArray.append(addedNUmber)
		}
		appendArray = appendArray.sorted()
		let requiredString = appendArray[0]
		let requiredINt = Int(requiredString)
		return requiredINt ?? 0
	} else {
		var appendArray = [String]()
		for i in 0...numArray.count - 1 {
			numArray.insert("5", at: i)
			let addedNUmber = String(numArray)
			numArray.remove(at: i)
			appendArray.append(addedNUmber)
		}
		print(appendArray.sorted())
		let requiredINt = Int(appendArray.sorted().last!)
		return requiredINt!
	}
}

print(anoSolution(-265))

func solution (_ N: Int) -> Int {
	if N < 10 {
		return N
	} else {
		var i = N
		var digit = [String]()
		while i > 9 {
			i = i - 9
			digit.append(String(9))
		}
		digit.append(String(i))
		return Int(digit.reversed().joined())!
	}
}

print(solution(19))


let arr1 = ["1", 1, nil] as [Any?]

arr1.forEach { (value) in
	print(value as? String ?? "No Value")
}

let intString: String = "1 2"
let intArray = intString.split(separator: " ").map{Int($0)!}
if intArray.count == 2 {
    print("")
} else {
    print(intArray[0])
}
print(intArray.reduce(0, +))

let arrstr = ["1", "2", "3"]
let arrstrcount = arrstr.count
for i in 0..<arrstrcount {
    if i == arrstrcount - 1 {
        print("Last Element")
    }
    print(arrstr[i])
}

print(arrstr.map{ "Nil" + $0 })

let arr = [1,2,3,2]
print(arr.firstIndex(of: 2)!)
print(arr.lastIndex(of: 2)!)

let strID = """
816913
816915
816923
816925
"""

let joinedArray = strID.components(separatedBy: .newlines)
print(joinedArray)

extension Collection where Element: Comparable {
    var isSorted: Bool {
        guard count > 1 else {
            return true
        }

        let pairs = zip(prefix(count - 1), suffix(count - 1))

        return !pairs.contains { previous, next in
            previous > next
        }
    }
}

extension Array where Element: Comparable {
    func isAscending() -> Bool {
        return zip(self, self.dropFirst()).allSatisfy(<=)
    }

    func isDescending() -> Bool {
        return zip(self, self.dropFirst()).allSatisfy(>=)
    }
}

print(joinedArray.isSorted)
print(joinedArray.isAscending())

let arr = [1,2,3,4,5]
var out = [Int]()
// n * d = 10
let n = arr.count
let d = 2
if n > d {
	for i in d..<n {
		out.append(arr[i])
	}
	for j in 0..<d {
		out.append(arr[j])
	}
}
print(out)

var anotherArr = [1,2,3,4,5]
for _ in 0..<d {
	let holdValue = anotherArr[0]
	for i in 1..<n {
		anotherArr[i-1] = anotherArr[i]
	}
	anotherArr[n-1] = holdValue
}
print(anotherArr)
