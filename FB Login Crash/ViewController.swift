//
//  ViewController.swift
//  FB Login Crash
//
//  Created by Martin Otyeka on 2018-06-10.
//  Copyright © 2018 New Capsule Corp. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = UIButton(frame: CGRect(x: (self.view.bounds.width / 2) - 50, y: self.view.bounds.height / 2, width: 100, height: 44))
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        self.view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(self.tap), for: .touchUpInside)
    }
    
    @objc func tap() {
        PFFacebookUtils.logInInBackground(withReadPermissions: ["public_profile", "email", "user_gender"]) { (user: PFUser?, error: Error?) in
            print(error)
            print(user)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

