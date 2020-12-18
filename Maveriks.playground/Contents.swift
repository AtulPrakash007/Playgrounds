import UIKit

var str = "Hello, playground"

let arr = [4,2,6,3]
var checkSum = 10

func findIndices(_ arr: [Int], for check: Int) -> (Int, Int) {
//	for i in 0..<arr.count {
//		for j in 1..<arr.count {
//			if (arr[i] + arr[j]) == check {
//				return (i,j)
//			}
//		}
//	}
	
//	var anotherArray = arr
//	var count = 0
//	while anotherArray.count > 0 {
//		for i in 0..<anotherArray.count {
//			if (anotherArray[0] + anotherArray[i]) == check {
//				return (count,i+count)
//			}
//		}
//		anotherArray.remove(at: 0)
//		count += 1
//	}
	
	for i in 0..<arr.count {
		let remainig = check - arr[i]
		if arr.contains(remainig) {
			return (i, arr.firstIndex(of: remainig)!)
		}
	}
	
	return (0,0)
}

print(findIndices(arr, for: checkSum))


