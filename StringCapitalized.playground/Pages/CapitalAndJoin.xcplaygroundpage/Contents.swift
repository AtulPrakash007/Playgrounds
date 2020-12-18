//: [Previous](@previous)
import Foundation

let problemIds = "30420444,30420451,30420453"
print(problemIds.reversed())
let copiedID = """
30420444
30420451
30420453
"""
print(copiedID.replacingOccurrences(of: "\n", with: ","))

let x = Int(3.4 * 2.3)

for value in UnicodeScalar("a").value...UnicodeScalar("z").value { print(UnicodeScalar(value)!) }

for i in 97...122{ print(UnicodeScalar(i)!) }


extension String {
    
    var filtered: String {
        let allowedChars = Set("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789")
        return self.filter {allowedChars.contains($0) }
    }
	
	var firstLowercased: String { prefix(1).lowercased() + dropFirst() }
    var firstUppercased: String { prefix(1).uppercased() + dropFirst() }
    var firstCapitalized: String { prefix(1).capitalized + dropFirst() }
	
	func remove_char(at: Int) -> String {
		let count = self.count
		var newWord = self
		let index = self.index(self.startIndex, offsetBy: at)
		if  count > 0
		{
			newWord.remove(at: index)
		}
		return newWord
	}
}

var str = "Observe that the sub menu's 'Quick Actions' and 'Modify' should not be displayed when the modification sheet is displayed"

let strCapital = str.capitalized.replacingOccurrences(of: " ", with: "").filtered

print(strCapital)

var startsWith = "starts with"
print(startsWith.firstUppercased)
print(startsWith.capitalized)
print(startsWith.remove_char(at: 5))

let sortBy = "Sort by Attribute"
print(sortBy.split(separator: " ")[2])


for i in stride(from: 10, to: 0, by: -1) {
	print(i)
}

var item = -1
var numArray = [Int]()
repeat {
	item += 1
	if item % 2 == 1 {
		continue
	}
	numArray.append(item)
} while item <= 20

print(numArray)

var first: String?
var last: = "bj"
last = "jkhjk"
first = "hkh"

var text = " akndk"
text = nil
print(text)

var stepSize = 1
func increment (_ number: inout Int) {
	number += stepSize
}
increment(&stepSize)
