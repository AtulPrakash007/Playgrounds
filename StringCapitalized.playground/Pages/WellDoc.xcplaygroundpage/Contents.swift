//: [Previous](@previous)

import Foundation

let array1 = ["hello", "hi"]

let array2 = ["world", "bye"]

for i in 0..<array1.count {
	if array1[i] == array2[i] {
		print ("YES")
	} else {
		let characterInString2 = array2[i].map {$0}
		var includes: Bool = false
		for char in characterInString2 {
			if array1[i].contains(char) {
				includes = true
				break
			}
		}
		if includes {
			print("YES")
		} else {
			print("NO")
		}
	}
}

for i in 0..<array1.count {

	let string1 = array1[i]

	let string2 = array2[i]

	if string1 == string2 {

		print("YES")

	} else {

		let charcatersInString1 = string1.map{$0}

		let charcatersInString2 = string2.map{$0}

		if charcatersInString1.first == charcatersInString2.first {

			var prefixLength = 1

			for j in 1..<charcatersInString1.count {

				if charcatersInString1[j] == charcatersInString2[j] {

					prefixLength += 1

				}

			}

			let prefix = string1.prefix(prefixLength)

			print("\(prefix)") // this will give u prefix as well

			print("YES")

		} else {

			print("NO")

		}

	}

}
