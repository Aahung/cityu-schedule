//
//  Schedule.swift
//  CityU Schedule
//
//  Created by Xinhong LIU on 2/9/2015.
//  Copyright © 2015 ParseCool. All rights reserved.
//


class Schedule {
    var courses: [Course]
    
    init(pageHTML: String) {
        self.courses = [] // TODO
    }
    
    func toDictionary() -> [String: AnyObject] {
        var dictionary = [String: AnyObject]()
        
        dictionary["courses"] = self.courses
        
        return dictionary
    }
}
