//
//  Enemy.swift
//  RPG OOP
//
//  Created by Craig Newcomb on 5/2/16.
//  Copyright © 2016 CraigNewcomb. All rights reserved.
//

import Foundation


class Enemy: Character {
    
    // What makes an enemy differ from a player? Well, for one, an enemy has LOOT you take when you defeat it.
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    
    var type: String {
        
        return "Grunt"
        
        
    }
    
    func dropLoot() -> String?  {
        if !isAlive {
            // note: !isAlive might be shorthand for "if isAlive = False". since != means not equal. Also, remember this logic means !isAlive returns TRUE if isAlive is FALSE.
            
            
            
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
            // this returns a random loot item
        }
        
        return nil
    }
    
    
}