//: [Previous](@previous)

import Foundation

class demo {
	var title: String
	
	init(title: String) {
		self.title = title
	}
	
	static func demostatic() -> String {
		return "Working fine"
	}
}

demo.demostatic()

class person {
	let name :String
	init(name :String) {
		self.name = name
	}
	
	deinit {
		print("in")
	}
}

var reference: person?
var reference1: person?
reference = person(name: "Atul")

