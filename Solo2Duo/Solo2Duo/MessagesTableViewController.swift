//
//  MessagesTableViewController.swift
//  Solo2Duo
//
//  Created by Samuel Wang on 12/27/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import Foundation

class MessagesTableViewController: UITableViewController {

    var data = [String]() //name
    var data2 = [String]() //message
    var data3 = [String]() //time
    var data4 = [String]() //date
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        glblUser.messages.append(Messages(personName: "john doe", message: "hello, your profile interested me!", time: "2:27 AM", date: "12/27/15"))
        data = [glblUser.messages[0].personName]
        data2 = [glblUser.messages[0].message]
        data3 = [glblUser.messages[0].time]
        data4 = [glblUser.messages[0].date]
        
        
        // Register custom cell
        let nib = UINib(nibName: "vwTblCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        
        // Do any additional setup after loading the view.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return glblUser.messages.count //returns amount of messages so that you know how many rows to use
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       // let SamWang = tableView.dequeueReusableCellWithIdentifier("SamWang", forIndexPath: indexPath) as UITableViewCell
       // SamWang.textLabel?.text = data[indexPath.row]
        //return SamWang
        let cell:TblCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! TblCell
        cell.labelName.text = data[indexPath.row]
        cell.labelMessage.text = data2[indexPath.row]
        cell.labelTime.text = data3[indexPath.row]
        cell.labelDate.text = data4[indexPath.row]
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
