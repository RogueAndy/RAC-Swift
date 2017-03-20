//
//  RUser.swift
//  RAC-Swift
//
//  Created by rogue on 2017/3/20.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit
import ObjectMapper
import Alamofire

class RUser: Mappable {

    var username: String?
    var age: Int?
    var weight: Double?
    var friends: [RUser]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        username <- map["username"]
        age <- map["age"]
        weight <- map["weight"]
        friends <- map["friends"]
    }
    
}

