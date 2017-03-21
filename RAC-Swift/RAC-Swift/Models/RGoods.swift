//
//  RGoods.swift
//  RAC-Swift
//
//  Created by rogue on 2017/3/21.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import ObjectMapper

class RGoods: Mappable {

    var id: String?
    var m: String?
    var op: String?
    var p: String?
    
    required init(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        id <- map["id"]
        m <- map["m"]
        op <- map["op"]
        p <- map["p"]
        
    }
    
}
