//
//  ViewController.swift
//  RPG OOP II
//
//  Created by Craig Newcomb on 5/3/16.
//  Copyright © 2016 CraigNewcomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestButton: UIButton!
    
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
        
        generateRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        
        
    }

    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else { enemy = DevilWizard(startingHp: 60, attackPwr: 15) }
        
        enemyImg.hidden = false 
    }
    
    
    
    @IBAction func onChestTapped(sender: AnyObject) {
        
        chestButton.hidden = true
        printLbl.text = chestMessage
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
        
        
        
        
    }
    
    
    @IBAction func attackTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            
            enemyHpLbl.text = "\(enemy.hp) HP"
            
        } else { printLbl.text = "Attack was unsuccessful!" }
        
        
        //remember enemy may not drop loot; check how the dropLoot() function in Enemy class returns an optional String, we need if let syntax 
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)!"
        }
    }


}

