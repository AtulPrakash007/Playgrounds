import UIKit

// 1
extension Array {
    mutating func rearrange(from: Int, to: Int) {
        insert(remove(at: from), at: to)
    }
}

var myArray = [1,2,3,4]
myArray.rearrange(from: 1, to: 2)
print(myArray)

// 2
extension Array where Element: Equatable
{
    mutating func move(_ element: Element, to newIndex: Index) {
        if let oldIndex: Int = self.firstIndex(of: element) { self.move(from: oldIndex, to: newIndex) }
    }
}

extension Array
{
    mutating func move(from oldIndex: Index, to newIndex: Index) {
        // Don't work for free and use swap when indices are next to each other - this
        // won't rebuild array and will be super efficient.
        if oldIndex == newIndex { return }
        if abs(newIndex - oldIndex) == 1 { return self.swapAt(oldIndex, newIndex) }
        self.insert(self.remove(at: oldIndex), at: newIndex)
    }
}

var anotherArray = ["a", "b", "c", "d"]
anotherArray.move("a", to: 2)
print(anotherArray)
anotherArray.move(from: 0, to: 2)
print(anotherArray)
