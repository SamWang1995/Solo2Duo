//
//  profile.swift
//  Solo2Duo
//
//  Created by Betty Jing on 12/21/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import Foundation
import Parse
import FBSDKCoreKit
import FBSDKLoginKit


class profile : UIViewController {
 
    @IBOutlet var profilePicture: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer()) //let's you go back with gesture
        
        if let currentUser = PFUser.currentUser() {
            
            let accessToken = FBSDKAccessToken.currentAccessToken()
            let userID = FBSDKAccessToken.currentAccessToken().userID
            let url = NSURL(string: "https://graph.facebook.com/"+userID+"/picture?width=300&height=300")
            let urlRequest = NSURLRequest(URL: url!)
            
            NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
                response, data, error in
                
                let image = UIImage(data: data!)
                self.profilePicture.image = image
                
                currentUser.saveInBackground()
                FBSDKProfile.enableUpdatesOnAccessTokenChange(true)
                
            })
           
            
            
            
        }
        
    }
    
}
