import Foundation

let phrase = "1/1"

/// The data detector used to detect dates.
fileprivate let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .none
    dateFormatter.timeStyle = .none
    return dateFormatter
}()

fileprivate let dateStyles: [DateFormatter.Style] = [
    .full,
    .long,
    .medium,
    .short,
]

for dateStyle in dateStyles {
    dateFormatter.dateStyle = dateStyle
    if let date = dateFormatter.date(from: phrase) {
        print(date)
        let calendar = Calendar.current
        let dateComponents = calendar.dateComponents([.calendar, .month, .day, .year], from: date)
        if let _year = dateComponents.year, (String(_year).count == 1 || String(_year).count == 3) {
            print("Invalid Year")
        } else {
            print("Valid Year")
        }
    }
}

var year: Int? = 1
var month: Int? = 1
var day: Int? = 1
//if String(year!).count == 1 || String(year!).count == 2 {
//    print(String(year!).count)
//}

if year != nil || month != nil || day != nil {
    if let year = year, (String(year).count == 1 || String(year).count == 3) {
        print("not null year")
    } else {
        print("Passes")
    }
//    if (year != nil && String(year!).count == 1) || (year != nil && String(year!).count == 3) {
//        print("not null year")
//    } else {
//        print("Passes")
//    }
}

