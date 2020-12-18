import UIKit

func returnArr() -> [String] {
    var array = [String]()

    array.append("23")
    array.append("20")
    array.append("20")
    array.append("15")
    array.append("15")
    
    return array
}

let array = returnArr()
print(array)

//array = Array(NSOrderedSet(array: array)) as! [String]]
//print(array)

let desSortedArray = array.sorted(by: >)
print(desSortedArray)

let ascSortedArray = array.sorted(by: {$0 > $1})
print(ascSortedArray)
