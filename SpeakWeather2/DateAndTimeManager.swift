//
//  DateAndTimeManager.swift
//  SpeakWeather2
//
//  Created by user on 8/2/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation



func getDayOfWeek(today:String)->Int? {
    
    let formatter  = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    let todayDate = formatter.date(from: today)!
    let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
    let myComponents = myCalendar.components(.weekday, from: todayDate)
    let weekDay = myComponents.weekday
    return weekDay!
}


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

    


