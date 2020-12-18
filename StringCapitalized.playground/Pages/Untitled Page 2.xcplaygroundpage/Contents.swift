//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//: [Next](@next)

class Atul {
	static let sharedInstance = Atul()
	
	private init() {}
	
	let var1 = ""
}

Atul.sharedInstance.var1

let arr = [2, 4, 1, 5 , 6, nil, 10, 15, nil]
print(arr.compactMap{$0})

let dict: [String: [Int]] = ["Ratnadeep": [3, 5, 7,], "Atul": [3, 4, 6]]
dict.flatMap{$0.value}



