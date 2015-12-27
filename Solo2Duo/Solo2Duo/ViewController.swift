//
//  ViewController.swift
//  Solo2Duo
//
//  Created by Samuel Wang on 12/9/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    
    @IBOutlet var open: UIBarButtonItem!
    
    override func viewDidLoad() {

    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view, typically from a nib.
        if (FBSDKAccessToken.currentAccessToken() != nil)
        {
            // User is already logged in, do work such as go to next view controller.
            performSegueWithIdentifier("showNew", sender: self)
        }
        else
        {
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.center = self.view.center
            loginView.readPermissions = ["public_profile", "email", "user_friends"]
            loginView.delegate = self
        }
        
        let AlertView = UIAlertController(title: "Bruhh..", message: "R U Okay?", preferredStyle: UIAlertControllerStyle.Alert)
        AlertView.addAction(UIAlertAction(title: "Don't Try Again.", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(AlertView, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    func Notification(){
        
        let Notification = UILocalNotification()
        Notification.alertAction = "Come Back!"
        Notification.alertBody = "SAM IS THE COOLEST KID EVER"
        
        Notification.fireDate = NSDate(timeIntervalSinceNow: 0)
        
        UIApplication.sharedApplication().scheduleLocalNotification(Notification)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("User Logged In")
        
        if ((error) != nil)
        {
            // Process error
        }
        else if result.isCancelled {
            // Handle cancellations
        }
        else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if result.grantedPermissions.contains("email")
            {
                performSegueWithIdentifier("showNew", sender: self)
                // Do work
            }
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    
    func returnUserData()
    {
        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "name,email"])
        graphRequest.startWithCompletionHandler({ (connection, result, error) -> Void in
            
            if ((error) != nil)
            {
                // Process error
                print("Error: \(error)")
            }
            else
            {
                print("fetched user: \(result)")
                let userName : NSString = result.valueForKey("name") as! NSString
                print("User Name is: \(userName)")
                let userEmail : NSString = result.valueForKey("email") as! NSString
                print("User Email is: \(userEmail)")
            }
        })
    }
}