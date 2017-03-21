//
//  RAlamofile.swift
//  RAC-Swift
//
//  Created by rogue on 2017/3/20.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

typealias RAlamofireSuccess = (_ str: String) -> Void

class RAlamofile: NSObject {

    public func successBlock(success: @escaping (Any?) -> (Void)) {
    
        Alamofire.request("http://p.3.cn/prices/mgets?skuIds=J_954086&type=1").responseJSON { (response: DataResponse) in
            
            let res = response.result.value //as! Array<Any>
            let map = Mapper<RGoods>().mapArray(JSONObject: res)! as Array<RGoods>
            print(map[0].id! + "\n" + map[0].op!)
//            let rgoods = RGoods(JSON: res[0] as! Dictionary)//! as RGoods
//            print((res[0] as! Dictionary)["id"]!)
//            print(rgoods.id!)
            
            success(res)
            
        }
        
    }
    
}
