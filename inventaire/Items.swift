//
//  Items.swift
//  inventaire
//
//  Created by Joris ZEFIRINI on 22/11/2016.
//  Copyright © 2016 SoniWeb. All rights reserved.
//

import Foundation

public class Items{
    
        var name: String = ""
        var age: Int = 0
        
        init(lename: String, leage: Int) {
            name = lename
            age = leage
        }
        
        public func setNom(newName: String){
            name = newName
        }
        
        public func getNom() -> String{
            return name
        }
        
        public func setAge(newAge: Int){
            age = newAge
        }
        
        public func getAge() -> Int{
            return age
        }
    
}
