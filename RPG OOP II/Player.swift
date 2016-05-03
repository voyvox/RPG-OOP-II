//
//  Player.swift
//  RPG OOP
//
//  Created by Craig Newcomb on 5/2/16.
//  Copyright © 2016 CraigNewcomb. All rights reserved.
//

import Foundation

class Player: Character {
    
    // Player: Character means Player inherits from the Character parent class.
    
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    
    
    private var _inventory = [String]()
    
    
    
    ///computed property; "getter"
    var inventory: [String] {
        return _inventory
    }
    
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        _name = name
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}