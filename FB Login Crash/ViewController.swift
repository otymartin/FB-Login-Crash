//
//  ViewController.swift
//  FB Login Crash
//
//  Created by Martin Otyeka on 2018-06-10.
//  Copyright © 2018 New Capsule Corp. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton(frame: CGRect(x: (self.view.bounds.width / 2) - 50, y: self.view.bounds.height / 2, width: 100, height: 44))
        self.view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(self.tap), for: .touchUpInside)
        loginButton.readPermissions = ["public_profile", "email", "user_gender"]
    }
    
    @objc func tap() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

