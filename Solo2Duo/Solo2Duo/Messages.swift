//
//  Messages.swift
//  Solo2Duo
//
//  Created by Samuel Wang on 12/27/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import Foundation

class Messages{
    
    //variables for messages
    var personName = ""
    var message = ""
    var time = ""
    var date = ""
    
    //initializer
    init(personName: String, message: String, time: String, date: String){
        self.personName = personName
        self.message = message
        self.time = time
        self.date = date

    }
}