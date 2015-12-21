//
//  SlideViewController.swift
//  Solo2Duo
//
//  Created by Betty Jing on 12/20/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import UIKit

class SlideViewController: UIViewController {

    @IBOutlet var open: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        open.target = self.revealViewController()
        open.action = Selector("revealToggle:")
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
