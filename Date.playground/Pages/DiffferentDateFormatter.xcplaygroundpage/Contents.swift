//: [Previous](@previous)

import Foundation

let str = "2/12/20"
let str1 = "2020-12-02"

//#1
let df1 = DateFormatter()
df1.dateStyle = .short
df1.timeStyle = .none
df1.dateFormat = "yyyy-MM-dd"
df1.isLenient = false
// When passed as dd/MM/yyy - it will detect as yyyy-MM-dd
// Why it not works? We have method to work with m/d format in "MonthAndDay", the string bypass that method and detected by this one which will give different output
print(df1.date(from: str) ?? "Not converted") // 0002-12-19 18:06:32 +0000
print(df1.date(from: str1) ?? "Not converted") // 2020-12-01 18:30:00 +0000

//#2
let df2 = DateFormatter()
df2.dateStyle = .short
df2.timeStyle = .none
df2.dateFormat = "yyyy-MM-dd"
df2.isLenient = true
// Same as above one
print(df2.date(from: str) ?? "Not converted") // 0002-12-19 18:06:32 +0000
print(df2.date(from: str1) ?? "Not converted") // 2020-12-01 18:30:00 +0000

//#3
let df3 = ISO8601DateFormatter()
df3.formatOptions = [.withFullDate]
// This also works wrong
print(df3.date(from: str) ?? "Not converted") // 0002-12-20 00:00:00 +0000
// But when entered in the correct format, it works absolutely fine. That's why we need regex to distinguish between the date format entered by the user
print(df3.date(from: str1) ?? "Not converted") // 2020-12-02 00:00:00 +0000

let str2 = "2020-04"
let df4 = DateFormatter()
df4.dateStyle = .short
df4.timeStyle = .none
df4.dateFormat = "yyyy-MM"
print(df4.date(from: str2) ?? "Not converted")
