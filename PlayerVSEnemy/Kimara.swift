//
//  Kimara.swift
//  PlayerVSEnemy
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import Foundation

class Kimara : Enemy {
    
    //just if the attack is larger then IMMUNE_MAX it will take effect
    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        return ["Tough Hide", "Kimara V", "Rare T"]
    }
    
    override var type: String{
        return "Kimara"
    }
    
    override func attemptAttack(attack: Int) -> Bool {
        if attack >= IMMUNE_MAX{
            return super.attemptAttack(attack)
        }
        else{
            return false
        }
    }
    
}
