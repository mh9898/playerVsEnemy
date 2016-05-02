//
//  ViewController.swift
//  PlayerVSEnemy
//
//  Created by MiciH on 5/2/16.
//  Copyright © 2016 MicahelH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHPLbl: UILabel!
    
    @IBOutlet weak var enemyHPLbl: UILabel!
    
    @IBOutlet weak var chetBtn: UIButton!
    
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    

    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "DT", hp: 110, AttckPower: 20)
        
        playerHPLbl.text = "\(player.hp) HP"
        
        genreteRandomEnemy()
    }
    
    func genreteRandomEnemy(){
        enemyImg.hidden = false
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0{
            enemy = Kimara(hp: 50, attakPower: 12)
            printLbl.text = "\(player.name) VS \(enemy.type)"
            enemyImg.image = UIImage(named: "enem1.png")
        }
        else{
            enemy = DevilWizared(hp: 60, attakPower: 15)
             printLbl.text = "\(player.name) VS \(enemy.type)"
            enemyImg.image = UIImage(named: "enem2.png")
        }
    }

    @IBAction func attackAction(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr){
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHPLbl.text = "\(enemy.hp) HP"
        }
        else{
            printLbl.text = "Attack was unsucsuful"
        }
        
        if let loot = enemy.dropLoot(){
            player.addItemToInverory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chetBtn.hidden = false
        }
        
        if !enemy.isAlive{
            enemyHPLbl.text = ""
            printLbl.text = "\(enemy.type) Is dead"
            enemyImg.hidden = true
            
        }
    }
    
    @IBAction func chestAction(sender: AnyObject) {
        chetBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "genreteRandomEnemy", userInfo: nil, repeats: false)
        
//        genreteRandomEnemy()
//        enemyImg.hidden = false
    }
   
}

