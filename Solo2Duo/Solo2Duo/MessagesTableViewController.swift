//
//  MessagesTableViewController.swift
//  Solo2Duo
//
//  Created by Samuel Wang on 12/27/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import Foundation

class MessagesTableViewController: UITableViewController {

    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        glblUser.messages.append(Messages(personName: "john doe", message: "hello", time: "2:27 AM", date: "12/27/15"))
        data = [glblUser.messages[0].personName + glblUser.messages[0].message + glblUser.messages[0].time  + glblUser.messages[0].date]
        // Do any additional setup after loading the view.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return glblUser.messages.count //returns amount of messages so that you know how many rows to use
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let SamWang = tableView.dequeueReusableCellWithIdentifier("SamWang", forIndexPath: indexPath) as UITableViewCell
        SamWang.textLabel?.text = data[indexPath.row]
        return SamWang
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
