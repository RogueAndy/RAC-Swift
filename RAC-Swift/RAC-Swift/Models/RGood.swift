//
//  RGood.swift
//  RAC-Swift
//
//  Created by rogue on 2017/3/20.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import ObjectMapper

class RGood: RBaseMapper {

    var id: String?
    var m: Double?
    var op: Double?
    var p: Int?
    
    required init(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        
        super.mapping(map: map)
        id <- map["id"]
        m <- map["m"]
        op <- map["op"]
        p <- map["p"]
        
    }
    
}
