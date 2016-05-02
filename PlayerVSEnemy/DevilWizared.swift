//
//  DevilWizared.swift
//  PlayerVSEnemy
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import Foundation

class DevilWizared: Enemy {
    
    override var loot: [String]{
        return ["Magic Wood", "Dark W"]
    }
    
    override var type: String{
        return "Devil Wizared"
    }
    
}
