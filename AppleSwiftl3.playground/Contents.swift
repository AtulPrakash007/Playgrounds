import UIKit

//1
let namesArra = ["River", "Kay", "Zoe"]
//let result = namesArra.sorted($0 > $1)
let result = namesArra.sorted{$0 > $1}
print(result)

//2
let numArra = [1,3,5,7,9]
let numresult = numArra.filter{$0 >= 5}
print(numresult)

//3
struct anuything {
    static var song: String = "Shake it Off"
    var name: String
    var age: Int
}
let assignStruct = anuything(name: "Atul", age: 30)
print(assignStruct.song)

//4 - Doubt in this question, didn't remembered correctly
func foo (_ function(Int) -> Int) -> Int {
    return function(function(5))
}

func boo <T>(number: T) -> T {
    return (number * 3)
}

print(foo(boo(5)))

//5
var foo = boo = 4
boo = 5
print(boo)

//6
//lazy can be used with - let, var, both, neither

//7
//If property don't hold a value, which wii use to avoid run time error - ? ?? ! !!

//8
enum MulError {
    case broke1
    case broke2
    case broke3
}

func willThrowError() {
    throw MulError.broke2
}

do{
    try willThrowError()
} catch MulError.broke2 {
    print("Broke 2")
} catch {
    print("Not Broke")
}

//9
let dataA: [Any?] = ["Atul", nil, 69, "prakash"]
for dataB in dataA where !(dataB is Hashable) {
    print(dataB)
}

//10
var arr1 = [1,2,3,4,5]
var arr2 = arr1
arr2.append(6)
print(arr1.count)

//11
let rounded: Int = round(10.5)
print("Rounded works \(rounded)")

//12
let name = "Atul"
switch name {
case "Atul":
    fallthrough
case "Azar", "Anil", "Murali":
    print("Anything")
default:
    print("Default")
}

//13
func greet(var name: String) {
    name = name.uppercased()
    print("Name printed: \(name)")
}
greet("River")


//14
var string: String = String(describing: String.self)
print(string)

//15
class Starship {
    var name: String
    
    override init (initalName: String) {
        name = initalName
    }
}

let star = Starship(initalName: "Atul")
print(star.name)

//16
var names = [String]()
names.reserveCapacity(2)
names.append("Atul")
names.append("Atul")
names.append("Atul")
print(names.count)

//17
let state = "Shiny"
for (position, character) in state.reversed().enumerated() where position % 2 == 0 {
    print("\(position): \(character)")
}

//18
// Swift overloading can be done by chaging the sequence of the parameter
