//
//  RoneViewController.swift
//  RAC-Swift
//
//  Created by rogue on 2017/3/20.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit
import ObjectMapper

class RoneViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange
        
        let fire = RAlamofile()
        fire.successBlock { (str) -> (Void) in
            
            let map = Mapper<RGoods>().mapArray(JSONObject: str)! as Array<RGoods>
            print(map[0].m!)
            
        }
        
    }

}
