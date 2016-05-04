//
//  Character.swift
//  RPG OOP
//
//  Created by Craig Newcomb on 5/2/16.
//  Copyright © 2016 CraigNewcomb. All rights reserved.
//

import Foundation


class Character {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    //private because we want to encapsulate this data so it isn't changed by other means. Getter setter going to be anticipated to be needed. A convention is use the underscore to show this is the real unchangeable variable, and that the non-underscore merely accesses this and then uses that non underscore version from then on.
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        // computed property
        //remember: computed properties have a computation inside of them before they return or set a value.
        
        get {
            if hp <= 0 {
                return false
            } else { return true }
        }
    }
    
    
    //the initializer CAN change these if you pass them in...? (clarify)
    //clarification to above comment: it does not change them. An initializer creates an instance of a class, so you are creating objects on the fly using the class structure. this is why you can set these values NOW in the initializer, but assigning them to the getters so that you use the getters not the private vars.
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
        
        // remember, self.xx refers to the global scope, while startingHp and attackPwr in the initializer refer to the local scope.
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
}