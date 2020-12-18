import UIKit

var str = "Hello, playground"


let arr = [1,2,3,4]
arr.map{$0}

extension Array {
	func customMap<T>(iterate : (Element) -> T) {
	}
}
