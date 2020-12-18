import UIKit

var str = "Hello, playground"
print(str)

var str1 = "elbow"
var str2 = "below"
var strArray1 :[Character] = []
var strArray2 :[Character] = []
str1 = str1.lowercased()
str2 = str2.lowercased()

for char1 in str1{
    
    strArray1 = strArray1 + [char1]
}

for char2 in str2{
    
    strArray2 = strArray2 + [char2]
}

func checkAnagram(str1:String, str2:String) -> Bool{
    
    if strArray1.count != strArray2.count{
        print("Not an Anagram")
        return false
    } else {
        print("Not an Anagram")
        return false
    }
    
    for chars in strArray1 {
        if strArray2.contains(chars) {
            return true
        }
    }
    
}
