//: [Previous](@previous)

import Foundation

let names = ["radar auto", "radar auto4", "Ravi Kiran Nallabelli", "Radar Maconly", "Radar Maconly2", "Paul Mix", "Jeet Pujara"]
let resultArr = ["Jeet Pujara", "Paul Mix", "radar auto", "radar auto4", "Radar Maconly", "Radar Maconly2", "Ravi Kiran Nallabelli"]

func sortFirstName(from array: [String]) {
	var dictionary = [String: [String]]()
	for item in array {
		let splitArray = item.split(separator: " ")
		print(splitArray)
		if splitArray.count > 1 {
			if dictionary[String(splitArray[0])] != nil {
				dictionary[String(splitArray[0])]!.append(String(splitArray[1]))
			} else {
				dictionary[String(splitArray[0])] = [String(splitArray[1])]
			}
		} else {
			if dictionary[String(splitArray[0])] != nil {
				dictionary[String(splitArray[0])]!.append("")
			} else {
				dictionary[String(splitArray[0])] = [""]
			}
		}
	}
	print(dictionary)
//	print(dictionary.sorted(by: { $0.key < $1.key }))
//	print(dictionary.sorted(by: <))
	print(dictionary.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
}

sortFirstName(from: names)

extension Collection {
  subscript(safe index: Index) -> Iterator.Element? {
    guard indices.contains(index) else { return nil }
    return self[index]
  }
}
