import UIKit

//1
let num = UInt.min
//Ans - 0

//2
var numberArray = ["1","2","3"]
numberArray += ["4"]
print(numberArray.count)
//Ans - 4

//3
let names = ["Atul", "Hussain"]
for name in names {
    name = name.uppercased()
    print(name)
}
//Ans - compile type error (name is constant)

//4
if let name = names.last {
    print(name)
}
//Ans - Hussain
//4.1
print(names.last)
//Ans - Optional(Hussain)

//5
let number = 16
print("\(number) is \(number * number) & \(sqrt(number))")
//Ans - Compile time error, reason - Sqrt allow float

//6
let dict = ["Atul": 30, "Hussain": 32, "Anil": 28, "Ajay": 24]
let sortArray = dict.sort{$0.1 < $1.1}.map{$0.0}
//Ans - Compile time error, there were no function sort, it's sorted

//6.1
let sortArray1 = dict.sorted{$0.1 < $1.1}.map{$0.0}
//Ans - string type array and will print in descending order

//7
let numbers = Array(1..<10)
print(numbers.count)
//Ans - 9

//8
for i in 3...1 {
    print(i)
}
//Ans - Run time error

//9
var isTrue: Bool = true
if isTrue.toogle() {
    print("Yay")
} else {
    print("Nah")
}
//Ans - Compile time error, toogle function is no more available


//10
let x: Int = 1
let y: UInt = 2
let z: Double = 3
let total = x+y+z
//Ans - Compile time error (Need to do type casting)


//11
var i=2
repeat{
    //9.1
    print(i)
    i *= i*2
} while (i<100)
//Ans - 2,8

//11.1
print(i)
//Ans - 128


//12
do{
    i *= 2
} while (i<100)
print(i)
//Ans - compile time error, do is not allowed in the swift

//13
let name: String = "Atul"; var array = [String]()
//Ans - seperate by ; semicolun


//------------------------------------ Apple swift - L3  ---------------------------------------------------
//14
var foo = boo = 4
//Ans - compile time error

//15
//Swift language overloading only can achieve by changing the sequence of value = false

//16
var n = 5
switch n {
case 0..<5:
    print("one")
case 0...5:
    print("two")
case 5...10:
    print("three")
default:
    print("fout")
}
//Ans - "two\n”

//17
let t = UInt8.max.addingReportingOverflow(1) //What is the return type
//Ans - tuple

//18
var array1 = ["poo",nil,"test",nil,"fout"] //was
array1.forEach { (string) in
    print(string)
}
//Ans - execute 5 time

//19
let value = ["test",nil,"test2",nil,"test"]
print(value.map({$0}))
//Ans - Execute 6  time

//20
let ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
let ingredients1 = ingredients
if ingredients.isSubset(of: ingredients1) {
    print("No thanks, too sweet.")
}
//Ans - "No thanks, too sweet.”

//21
for countdown in stride(from: 1, to: 21, by: 4) {
    print("\(countdown)...")
}
//Ans -
//1...
//5...
//9...
//13...
//17…

//22
var valueT = [String]()
valueT.append("test")
let v1 = valueT.popLast()
let v2 = valueT.popLast()
//Ans - Nil. It will not crash

//23
let valueS = ["test",nil,"test2",nil,"test"]
print(valueS.map({$1}))
//Ans - Ambiguous reference to member ‘map’ error, Compile time error

//24
var value1 : Float = 32
var value2 : Double = 32
//Ans - Neither or not assign each other

//25
override func viewDidLoad() {
    super.viewDidLoad()
    func testtttt(test:String) {
       print(test)
    }
    testtttt(test: "ios")
}
//Ans - ios, nested function

//26
fileprivate (set) var valueU : String = "string"
valueU = "test"
print(valueU)
//Ans - test

//27
let valueV = ["test",nil,"test2",nil,"test"]
for value in !(valueV as Hashable){
    print(value)
}
//Ans - Compile time error
