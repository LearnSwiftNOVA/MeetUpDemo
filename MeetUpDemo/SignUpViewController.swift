//
//  SignUpViewController.swift
//  MeetUpDemo
//
//  Created by Andrew Rudkosky on 8/4/17.
//  Copyright © 2017 Andrew Rudkosky. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    //Textfield outlets
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //Sign In button
    @IBAction func SignIn(_ sender: Any){
        
        //declare email and password
        if let email = emailField.text, let password = passwordField.text {
            
            //Firebase Creat User
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                if error == nil {
                    
                    //Print message for successful sign up
                    print("You have successfully signed up")
                    
                    //After sign up, segue to home screen
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    self.present(vc!, animated: true, completion: nil)
                        }
                    }
                }
            }
        }


