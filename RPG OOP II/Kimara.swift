//
//  Kimara.swift
//  RPG OOP
//
//  Created by Craig Newcomb on 5/2/16.
//  Copyright © 2016 CraigNewcomb. All rights reserved.
//

import Foundation


class Kimara: Enemy {
    
    // has immunity: any attack 15 or less will not land and actually give him 1 hp
    
    
    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
            // we are calling the super attemptAttack function since we already wrote that code, even though we are in the override function here! This is if your attack is above the Kimara's immunity, meaning your attack lands as usual.
            
        } else { return false }
    }
    
    
    
    
}