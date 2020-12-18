import UIKit
import Foundation
import XCTest

var str = "Hello, playground"

// How to access the swift class method in Objective c
// How to call enum in Objective C
// Can we declare String type enum in Objective C
// Declare String type enum in Swift - got error to define raw value why? What is type alias? What is RawRepresentable?
enum sample: String {
	case one
}

// Define protocol of generic type
// Call this protocol in confirming to some struct
// Print some thing in that function
protocol new {
	func callme<T>() -> T
}

struct some: new {
	func callme<T>() -> T {
		print("hello") as! T
	}
}

let someObj = some()

// Create a struct and a func to print some value
// write a test case to identify is the function get called or not?
struct Sample1 {
	func print1() {
		print("hello world")
	}
}

let sampleObj = Sample1()
XCTAssertTrue(sampleObj.print1())
