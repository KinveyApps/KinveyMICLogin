//
//  ViewController.swift
//  KinveyMICLogin
//
//  Created by Victor Hugo on 2017-09-05.
//  Copyright © 2017 Kinvey. All rights reserved.
//

import UIKit
import Kinvey

class ViewController: UIViewController {

    @IBOutlet weak var userIdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginWithMIC(_ sender: Any) {
        User.presentMICViewController(redirectURI: redirectURI) { user, error in
            if let user = user {
                self.userIdLabel.text = user.userId
            } else {
                self.userIdLabel.text = error?.localizedDescription ?? "Unknown Error"
            }
        }
    }

}

