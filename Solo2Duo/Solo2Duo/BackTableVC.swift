//
//  BackTableVC.swift
//  Solo2Duo
//
//  Created by Betty Jing on 12/21/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import Foundation

class BackTableVC : UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
    TableArray = ["profile", "matches", "messages", "find more matches"]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count //returns how many rows are inside section
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = TableArray[indexPath.row] //grabs based on index
        return cell //returning the value of the cell
    }
}