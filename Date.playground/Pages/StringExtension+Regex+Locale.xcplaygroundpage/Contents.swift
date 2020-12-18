import UIKit

var str = "Hello, playground"

extension String {
    func getCurrentTime(appendString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a" /// Small h 12 hour format, Capital H 24 hour format
        let timeString = dateFormatter.string(from: Date())
        return "\(appendString)\(timeString)"
    }
    
    var isNumeric: Bool {
        guard self.count > 0 else { return false }
        let numbers: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        return Set(self).isSubset(of: numbers)
    }
    
    func toDouble() -> Double? {
        return NumberFormatter().number(from: self)?.doubleValue
    }
    
    func getDateAsPerLocale(dateFormat localDateFormat: String, convertedDate style: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = localDateFormat
        formatter.timeZone = TimeZone.current
        let date = formatter.date(from: self)!
        print(date)

        let locale = Locale.current
        guard let languageCode = locale.languageCode else {
            return ""
        }
        guard let regionCode = locale.regionCode else {
            return ""
        }
        print("\(languageCode)_\(regionCode)") // Ex: en_US
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "\(languageCode)_\(regionCode)")
        dateFormatter.dateStyle = style
        return dateFormatter.string(from: date)
    }
}

//print("12/12/2019".getDateAsPerLocale(dateFormat: "dd/MM/yy", convertedDate: .short))
//print("12/12/19".getDateAsPerLocale(dateFormat: "dd/MM/yy", convertedDate: .short))
print("13/12/19".getDateAsPerLocale(dateFormat: "dd/MM/yy", convertedDate: .short))
//print("2020-12".getDateAsPerLocale(dateFormat: "yyyy-MM-dd", convertedDate: .short))

let formatter = ISO8601DateFormatter()//.string(from: Date(), timeZone: .autoupdatingCurrent, formatOptions: .withFullDate)
//print(formatter)
formatter.formatOptions = [.withFullDate]
//let string = formatter.string(from: Date())
let dString = formatter.date(from: "2020-02-31")
print(dString)

extension String {
    func matches(_ regex: String) -> Bool {
        return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
    }
    
    func matchesRegularExpression(_ regularExpression: String, caseSensitive: Bool = true) -> Bool {
        var options: String.CompareOptions = [String.CompareOptions.regularExpression]
        
        if !caseSensitive {
            options.insert(.caseInsensitive)
            
            // This functionality doesn’t work at the moment, since `String.CompareOptions.regularExpression` can’t be combined with `String.CompareOptions.diacriticInsensitive`.
            //options.insert(.diacriticInsensitive)
        }
        
        return (self.range(of: regularExpression, options: options, range: self.fullRange, locale: Locale.current) != nil)
    }
    
    public var fullRange: Range<String.Index> {
        return Range<String.Index>(uncheckedBounds: (self.startIndex, self.endIndex))
    }
}

let reg1 = "^[1-9]{1}[0-9]{3}-(0?[1-9]|1[0-2])$" // yyyy-m or yyyy-mm
let reg2 = "^[1-9]{1}[0-9]{3}-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2][0-9]|3[01])$" // yyyy-m-d or yyyy-mm-dd

if "2020-13-29".matchesRegularExpression(reg2) {
    print("regex matched")
}

if "2020-13".matchesRegularExpression(reg1) {
    print("Regex Matched")
}

// method to not search for future date
// method to append date as 01

func validateDate(year: Int, month: Int, day: Int = 1) -> Bool {
    var components = DateComponents()
    components.month = month
    components.year = year
    components.day = day
    components.calendar = Calendar.current
    
    return components.isValidDate
}

print(validateDate(year: 2020, month: 2, day: 29))

// Is need to write a method to return date in suggestion list by adding 01 for format yyyy-mm or existing method will work by just passing the date into it.


