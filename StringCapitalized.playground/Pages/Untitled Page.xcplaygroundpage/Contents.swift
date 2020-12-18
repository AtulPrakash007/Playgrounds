import UIKit
import Foundation

enum SortProblemListBy: String, CaseIterable {
    case attribute = "Sort by Attribute"
    case problemId = "Sort by Problem ID"
    case title = "Sort by Title"
    case priority = "Sort by Priority"
    case state = "Sort by State"
    case dateCreated = "Sort by Date Created"
    case dateModified = "Sort by Date Modified"
    case assignee = "Sort by Assignee"
    case component = "Sort by Component"
    case milestone = "Sort by Milestone"
    case event = "Sort by Event"
    case attachments = "Sort by Attachments"
    case pictures = "Sort by Pictures"
    case label = "Sort by Label"
}

print(SortProblemListBy.state.rawValue.dropLast(6))

let openSourceContent = "Open Source Content Impact"
print(openSourceContent.replacingOccurrences(of: "Content ", with: ""))

let windowName = "Component - Auto"
print(windowName.components(separatedBy: " - ")[1].count)

let copiedString = UIPasteboard.general.string
print(copiedString)

var index = 0

for _ in 0...20 {
    index += 1
}

print(index)

let a = "Auto iQA Root Component | All"
let b = "Auto iQA Root Component"
print(a.count - b.count)

let dbl = Double.init("5a")
print(dbl ?? "as.String()")

typealias Thing = [String: Any]
var stuff : Thing
print(type(of: stuff))

// function type
func add(a :Int, b: Int) -> Int {
    return a + b
}

let val = 5
print(type(of: val))

var test = 1 == 1

var x: Int?
let y = x ?? 5

print(["1","2","3"].map{$0})

func isAnagram(word1: String,word2: String) -> Bool {
    return word1.lowercased().sorted() == word2.lowercased().sorted()
}

print(isAnagram(word1: "below", word2: "elbow"))

extension String {
    var f : Character = "c" {
        didSet {
            print("n")
        }
    }
}

if let s = String.init("some") {
    print(s)
}

// how can you avoid strong reference cycles in a closure
// didset and willset set are?



