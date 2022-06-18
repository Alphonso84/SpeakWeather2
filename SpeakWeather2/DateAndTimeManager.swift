//
//  DateAndTimeManager.swift
//  SpeakWeather2
//
//  Created by user on 8/2/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation

extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
        // or use capitalized(with: locale) if you want
        
        
    }
    func timeOfDay() -> Int {
        var timeOfDay = Int()
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        timeOfDay = hour
        return timeOfDay
    }
}


class DateAndTimeManager {
    let timeOfDay = Date().timeOfDay()
    let formatter  = DateFormatter()
    
    func getDayOfWeek(today:String)->Int? {
        formatter.dateFormat = "yyyy-MM-dd"
        guard let todayDate = formatter.date(from: today) else {return nil}
        guard let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian) else {return nil}
        let myComponents = myCalendar.components(.weekday, from: todayDate)
        let weekDay = myComponents.weekday
        return weekDay
    }
    
    
    func timeOfDayArrayAssignment() -> [String] {
        
        var tempArray = [String]()
        if timeOfDay == 0 {
            tempArray.removeAll()
            tempArray = ["12AM","1 AM","2 AM","3 AM","4 AM","5AM","6AM","7AM","8AM","9AM","10AM","11AM"]
        }
        if timeOfDay == 1 {
            tempArray.removeAll()
            tempArray = ["1 AM","2 AM","3 AM","4 AM","5AM","6AM","7AM","8AM","9AM","10AM","11AM","12PM"]
        }
        if timeOfDay == 2 {
            tempArray.removeAll()
            tempArray = ["2 AM","3 AM","4 AM","5AM","6AM","7AM","8AM","9AM","10AM","11AM","12PM","1PM"]
        }
        if timeOfDay == 3 {
            tempArray.removeAll()
            tempArray = ["3 AM","4 AM","5AM","6AM","7AM","8AM","9AM","10AM","11AM","12PM","1PM","2PM"]
        }
        if timeOfDay == 4 {
            tempArray.removeAll()
            tempArray = ["4 AM","5AM","6AM","7AM","8AM","9AM","10AM","11AM","12PM","1PM","2PM","3PM"]
        }
        if timeOfDay == 5 {
            tempArray.removeAll()
            tempArray = ["5AM","6AM","7AM","8AM","9AM","10AM","11AM","12PM","1PM","2PM","3PM","4PM"]
        }
        if timeOfDay == 6 {
            tempArray.removeAll()
            tempArray = ["6AM","7AM","8AM","9AM","10AM","11AM","12PM","1PM","2PM","3PM","4PM","5PM"]
        }
        if timeOfDay == 7 {
            tempArray.removeAll()
            tempArray = ["7AM","8AM","9AM","10AM","11AM","12PM","1PM","2PM","3PM","4PM","5PM","6PM"]
        }
        if timeOfDay == 8 {
            tempArray.removeAll()
            tempArray = ["8AM","9AM","10AM","11AM","12PM","1PM","2PM","3PM","4PM","5PM","6PM","7PM"]
        }
        if timeOfDay == 9 {
            tempArray.removeAll()
            tempArray = ["9AM","10AM","11AM","12PM","1PM","2PM","3PM","4PM","5PM","6PM","7PM","8PM"]
        }
        if timeOfDay == 10 {
            tempArray.removeAll()
            tempArray = ["10AM","11AM","12PM","1PM","2PM","3PM","4PM","5PM","6PM","7PM","8PM","9PM"]
        }
        if timeOfDay == 11 {
            tempArray.removeAll()
            tempArray = ["11AM","12PM","1PM","2PM","3PM","4PM","5PM","6PM","7PM","8PM","9PM","10PM"]
        }
        if timeOfDay == 12 {
            tempArray.removeAll()
            tempArray = ["12PM","1PM","2PM","3PM","4PM","5PM","6PM","7PM","8PM","9PM","10PM","11PM"]
        }
        if timeOfDay == 13 {
            tempArray.removeAll()
            tempArray = ["1PM","2PM","3PM","4PM","5PM","6PM","7PM","8PM","9PM","10PM","11PM","12AM"]
            
        }
        if timeOfDay == 14 {
            tempArray.removeAll()
            tempArray = ["2PM","3PM","4PM","5PM","6PM","7PM","8PM","9PM","10PM","11PM","12AM","1 AM",]
        }
        if timeOfDay == 15 {
            tempArray.removeAll()
            tempArray = ["3PM","4PM","5PM","6PM","7PM","8PM","9PM","10PM","11PM","12AM","1 AM","2 AM"]
        }
        if timeOfDay == 16 {
            tempArray.removeAll()
            tempArray = ["4PM","5PM","6PM","7PM","8PM","9PM","10PM","11PM","12AM","1 AM","2 AM","3 AM"]
        }
        if timeOfDay == 17 {
            tempArray.removeAll()
            tempArray = ["5PM","6PM","7PM","8PM","9PM","10PM","11PM","12AM","1 AM","2 AM","3 AM","4 AM"]
        }
        if timeOfDay == 18 {
            tempArray.removeAll()
            tempArray = ["6PM","7PM","8PM","9PM","10PM","11PM","12AM","1 AM","2 AM","3 AM","4 AM","5AM"]
        }
        if timeOfDay == 19 {
            tempArray.removeAll()
            tempArray = ["7PM","8PM","9PM","10PM","11PM","12AM","1 AM","2 AM","3 AM","4 AM","5AM","6AM"]
        }
        if timeOfDay == 20 {
            tempArray.removeAll()
            tempArray = ["8PM","9PM","10PM","11PM","12AM","1 AM","2 AM","3 AM","4 AM","5AM","6AM","7AM"]
        }
        if timeOfDay == 21 {
            tempArray.removeAll()
            tempArray = ["9PM","10PM","11PM","12AM","1 AM","2 AM","3 AM","4 AM","5AM","6AM","7AM","8AM"]
        }
        if timeOfDay == 22 {
            tempArray.removeAll()
            tempArray = ["10PM","11PM","12AM","1 AM","2 AM","3 AM","4 AM","5AM","6AM","7AM","8AM","9AM"]
        }
        if timeOfDay == 23 {
            tempArray.removeAll()
            tempArray = ["11PM","12AM","1 AM","2 AM","3 AM","4 AM","5AM","6AM","7AM","8AM","9AM","10AM"]
        }
        
        return tempArray
    }
    
    
    func daysArrayLogic() -> [String] {
        var tempArray = [String]()
        let today = Date().dayOfWeek()
        if today == "Sunday" {
            tempArray.removeAll()
            tempArray = ["Today","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
        }
        if today == "Monday" {
            tempArray.removeAll()
            tempArray = ["Today","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday","Monday"]
        }
        if today == "Tuesday" {
            tempArray.removeAll()
            tempArray = ["Today","Wednesday","Thursday","Friday","Saturday","Sunday","Monday","Tuesday"]
        }
        if today == "Wednesday" {
            tempArray.removeAll()
            tempArray = ["Today","Thursday","Friday","Saturday","Sunday","Monday","Tuesday","Wednesday"]
        }
        if today == "Thursday" {
            tempArray.removeAll()
            tempArray = ["Today)","Friday","Saturday","Sunday","Monday","Tuesday","Wednesday", "Thursday"]
        }
        if today == "Friday" {
            tempArray.removeAll()
            tempArray = ["Today","Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"]
        }
        if today == "Saturday" {
            tempArray.removeAll()
            tempArray = ["Today","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
        }
        
        return tempArray
    }

}
    


