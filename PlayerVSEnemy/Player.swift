//
//  Player.swift
//  PlayerVSEnemy
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name : String = "player"
    
    
    var name : String{
        return _name
    }
    
    private var _invertory = [String]()
    
    var invertory: [String]{
        return _invertory
    }
    
    func addItemToInverory(item: String){
        _invertory.append(item)
    }
    
    convenience init(name: String, hp: Int, AttckPower: Int){
        self.init(hp: hp, attakPower: AttckPower)
        
        self._name = name
    }
    
}
