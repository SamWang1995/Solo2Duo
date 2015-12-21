//
//  matches.swift
//  Solo2Duo
//
//  Created by Betty Jing on 12/21/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import Foundation

class matches : UIViewController {
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer()) //let's you go back with gesture
    }
}