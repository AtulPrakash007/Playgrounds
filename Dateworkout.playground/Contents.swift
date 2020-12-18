import UIKit
let newDateValue = "13/12/19"
print(newDateValue)

func getDateAsPerLocale(date localDate: String, dateFormat localDateFormat: String) {
    let formatter = DateFormatter()
    formatter.dateFormat = localDateFormat
    formatter.timeZone = TimeZone.current
    let date = formatter.date(from: localDate)!
    print(date)

    let locale = Locale.current
    guard let languageCode = locale.languageCode else {
        return
    }
    guard let regionCode = locale.regionCode else {
        return
    }
    print("\(languageCode)_\(regionCode)") // Ex: en_IN
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "\(languageCode)_\(regionCode)")
    dateFormatter.dateStyle = .short
    print(dateFormatter.string(from: date))
    dateFormatter.locale = Locale(identifier: "\(languageCode)_IN")
    print(dateFormatter.string(from: date))
}

getDateAsPerLocale(date: newDateValue, dateFormat: "dd/MM/yy")

