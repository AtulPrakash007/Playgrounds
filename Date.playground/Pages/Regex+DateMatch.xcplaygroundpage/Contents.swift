//: [Previous](@previous)

import Foundation

let str = "2020-04"
let str1 = "2020-12-02"

let ISORegexYearAndMonth = "^(\\d{4,})-(\\d+)-(\\d+)$"

let df1 = DateFormatter()
df1.dateStyle = .short
df1.timeStyle = .none
df1.dateFormat = "yyyy-MM"

extension String {
    func matchesRegularExpression(_ regularExpression: String, caseSensitive: Bool = true) -> Bool {
        var options: String.CompareOptions = [String.CompareOptions.regularExpression]
        
        if !caseSensitive {
            options.insert(.caseInsensitive)
            
            // This functionality doesn’t work at the moment, since `String.CompareOptions.regularExpression` can’t be combined with `String.CompareOptions.diacriticInsensitive`.
            //options.insert(.diacriticInsensitive)
        }
        
        return (self.range(of: regularExpression, options: options, range: self.fullRange, locale: Locale.current) != nil)
    }
    
    var fullRange: Range<String.Index> {
        return Range<String.Index>(uncheckedBounds: (self.startIndex, self.endIndex))
    }
}

if str.matchesRegularExpression(ISORegexYearAndMonth) {
    print("Matched #1")
}

if str1.matchesRegularExpression(ISORegexYearAndMonth) {
    print("Matched #2")
}
