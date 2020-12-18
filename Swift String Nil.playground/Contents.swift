import UIKit

//var str: String? = nil
//
//if str?.isEmpty ?? true {
//    print("str is nil or empty")
//}
//
//str = ""
//
//if str?.isEmpty ?? true {
//    print("str is nil or empty")
//}

func demo(strCheck: String) -> String {
    if !strCheck.isEmpty {
        return "String is Not Empty"
    } else {
        return "String is Empty"
    }
}

print(demo(strCheck: ""))

print(demo(strCheck: "Atul"))
