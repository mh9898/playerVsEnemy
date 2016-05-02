//
//  Character.swift
//  PlayerVSEnemy
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import Foundation

class Character {
    
    //encpsulation proprites
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    //computer propties // can read only
    var attackPwr : Int{
        return _attackPwr
    }
    
    var hp: Int{
        return _hp
    }
    
    var isAlive: Bool{
        if self._hp <= 0 {
            return false
        }
        else{
            return true
        }
    }
    
    init(hp: Int, attakPower: Int){
        self._hp = hp
        self._attackPwr = attakPower
    }
    
    func attemptAttack(attack: Int) ->Bool{
        self._hp -= attack
        
        return true
    }
    
    
}
