//
//  ViewController.swift
//  First iOS app
//
//  Created by Omar Amrani on 10/01/2019.
//  Copyright © 2019 Omar Amrani. All rights reserved.
//

import UIKit
import Intercom

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var user_id_email_text_field: UILabel!
    
    @IBAction func register_user_button(_ sender: Any) {
        
        let identifier = String(user_id_email_text_field.text!)
        if identifier.contains("@"){
            Intercom.registerUser(withEmail: identifier)
            
        } else {
            
            Intercom.registerUser(withUserId: identifier)
        }
        
    }
    
    @IBAction func signout_button(_ sender: Any) {
        Intercom.logout()
    }
    
    @IBAction func display_messenger_button(_ sender: Any) {
        Intercom.setLauncherVisible(true)
    }
    
    
    @IBAction func hide_messenger_button(_ sender: Any) {
        Intercom.setLauncherVisible(false)
    }
    
}

