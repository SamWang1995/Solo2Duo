//
//  MatchesViewController.swift
//  Solo2Duo
//
//  Created by Betty Jing on 1/2/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import Foundation
class MatchesTableViewController: UITableViewController {
    
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
          glblUser.matches.append(Matches(personName: "john doe"))
         data = [glblUser.matches[0].personName]
        // Do any additional setup after loading the view.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return glblUser.matches.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let BettyJing = tableView.dequeueReusableCellWithIdentifier("BettyJing", forIndexPath: indexPath) as UITableViewCell
        
        BettyJing.textLabel?.text = data[indexPath.row]
        return BettyJing 
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

