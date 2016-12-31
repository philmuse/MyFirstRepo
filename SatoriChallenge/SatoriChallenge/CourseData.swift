//
//  CourseData.swift
//  SatoriChallenge
//
//  Created by Phil Muse on 12/11/16.
//
//

import Foundation
import UIKit
import Gloss

public class CourseData: Decodable {
    
    public var courses: [Course] = [Course]()
    
    public static func readPlist () {
        var myDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "CourseData", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        
        
        if let dict = myDict {
            if let courseList = dict["CourseList"] as? Array<[String:AnyObject]> {
                
                for course in courseList {
                    NSLog("Dict: \(course)")
                }
            } else {
                NSLog("Not a dictionary")
            }
        }
        
        
    }

    public required init?(json: JSON) {
        guard let list: [Course] = "CourseList" <~~ json else {
            NSLog("Could not parse plist")
        }
    }
    
    

}

public class Course: Decodable {
    
    public var monday: [String]?
    public var tuesday: [String]?
    public var wednesday: [String]?
    public var thursday: [String]?
    public var friday: [String]?
    
    public required init?(json: JSON) {
        self.monday = "Monday" <~~ json
        self.tuesday = "Tuesday" <~~ json
        self.wednesday = "Wedday" <~~ json
        self.thursday = "Thursday" <~~ json
        self.friday = "Friday" <~~ json
    }
}


