//
//  MainUser.swift
//  Solo2Duo
//
//  Created by Samuel Wang on 12/27/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import Foundation

class mainUser{
    //global variables
    var firstName = ""
    var lastName = ""
    
    //arrays
    var matches = [Matches]()
    var messages = [Messages]()
    
    //initializer
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
        
    }
}
var glblUser = mainUser(firstName: "John", lastName: "Doe")