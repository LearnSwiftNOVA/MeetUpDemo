//
//  LoginViewController.swift
//  MeetUpDemo
//
//  Created by Andrew Rudkosky on 8/4/17.
//  Copyright © 2017 Andrew Rudkosky. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
//Text field outlets
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //Log In button
    @IBAction func LogIn(_ sender: Any){
        
        //Set email and password
        if let email = emailField.text, let password = passwordField.text {
            //Firebase Sign in code
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error == nil {
                   
                    //print successful login message
                    print("You have successfully signed in!")
                    
                    //After login segue to home screen
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    self.present(vc!, animated: true, completion: nil)
                
                } else {
                   
                    //If unable to login, segue to sign up screen
                    print("Unable to log in user!")
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUp")
                    self.present(vc!, animated: true, completion: nil)
                }
            }
        }
    }
}


