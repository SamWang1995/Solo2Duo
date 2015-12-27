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
//        glblUser.messages.append(Messages(personName: "john doe", message: "BETTY LET ME CSGO PLZ", time: "2:27 AM", date: "12/27/15"))
        // Do any additional setup after loading the view.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return glblUser.messages.count
    }
    

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Sam Wang", forIndexPath: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
