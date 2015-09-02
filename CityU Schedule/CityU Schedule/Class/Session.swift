//
//  Session.swift
//  CityU Schedule
//
//  Created by Xinhong LIU on 2/9/2015.
//  Copyright © 2015 ParseCool. All rights reserved.
//

import UIKit

enum Weekday: Int {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
}

class Time {
    var hour: Int
    var minute: Int
    
    init(hour: Int, minute: Int) {
        self.hour = hour
        self.minute = minute
    }
    
    init(dictionary: [String: Int]) {
        self.hour = dictionary["hour"]!
        self.minute = dictionary["minute"]!
    }
    
    func toDictionary() -> [String: AnyObject] {
        var dictionary = [String: AnyObject]()
        
        dictionary["hour"] = self.hour
        dictionary["minute"] = self.minute
        
        return dictionary
    }
}

class Date {
    var year: Int
    var month: Int
    var day: Int
    
    init(year: Int, month: Int, day: Int) {
        self.year = year
        self.month = month
        self.day = day
    }
    
    init(dictionary: [String: Int]) {
        self.year = dictionary["year"]!
        self.month = dictionary["month"]!
        self.day = dictionary["day"]!
    }
    
    func toDictionary() -> [String: AnyObject] {
        var dictionary = [String: AnyObject]()
        
        dictionary["year"] = self.year
        dictionary["month"] = self.month
        dictionary["day"] = self.day
        
        return dictionary
    }
}

class Session {
    var startTime: Time, endTime: Time
    var weekday: Weekday
    var startDate: Date, endDate: Date
    var instructor: String
    
    init(startTime: Time, endTime: Time, weekday: Weekday,
         startDate: Date, endDate: Date, instructor: String) {
            
        self.startTime = startTime
        self.endTime = endTime
        
        self.weekday = weekday
        
        self.startDate = startDate
        self.endDate = endDate
        
        self.instructor = instructor
    }
    
    init(dictionary: [String: AnyObject]) {
        self.startTime = Time(dictionary: dictionary["start_time"] as! [String : Int])
        self.endTime = Time(dictionary: dictionary["end_time"] as! [String : Int])
        
        self.weekday = Weekday(rawValue: dictionary["weekday"] as! Int)!
        
        self.startDate = Date(dictionary: dictionary["start_date"] as! [String : Int])
        self.endDate = Date(dictionary: dictionary["end_date"] as! [String : Int])
        
        self.instructor = dictionary["instructor"] as! String
    }
    
    func toDictionary() -> [String: AnyObject] {
        var dictionary = [String: AnyObject]()
        
        dictionary["start_time"] = self.startTime.toDictionary()
        dictionary["end_time"] = self.endTime.toDictionary()
        
        dictionary["weekday"] = self.weekday.rawValue
        
        dictionary["start_date"] = self.startDate.toDictionary()
        dictionary["end_date"] = self.endDate.toDictionary()
        
        dictionary["instructor"] = self.instructor
        
        return dictionary
    }
}
