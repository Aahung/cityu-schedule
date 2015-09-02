//
//  Course.swift
//  CityU Schedule
//
//  Created by Xinhong LIU on 2/9/2015.
//  Copyright © 2015 ParseCool. All rights reserved.
//


class Course {
    var name: String
    var sessions: [Session]
    
    init(courseTableHTML: String, sessionsTableHTML: String) {
        self.name = "" // TODO
        self.sessions = [] // TODO
    }
    
    init(dictionary: [String: AnyObject]) {
        self.name = dictionary["name"] as! String
        self.sessions = [Session]()
        
        let sessionsDict = dictionary["sessions"] as! [[String: AnyObject]]
        for sessionDict in sessionsDict {
            self.sessions.append(Session(dictionary: sessionDict))
        }
    }
    
    func toDictionary() -> [String: AnyObject] {
        var dictionary = [String: AnyObject]()
        
        dictionary["name"] = self.name
        dictionary["sessions"] = self.sessions
        
        return dictionary
    }
}
